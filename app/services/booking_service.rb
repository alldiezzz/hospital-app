class BookingService
  attr_reader :user, :params, :doctor, :schedules, :time, :schedule
  def initialize(user, params)
    @user = user
    @params = params
    @doctor = get_doctor(params[:doctor_id])
    @schedules = doctor_schedules
    @time = booking_time(params).to_datetime
    @schedule = nil
  end

  def create
    @schedule = schedules.find_by_day(day_name)
    return "Cannot Booking this doctor anymore, already reached the limit." if booking_reach_limit?
    return "User Not found" if user.blank?
    return "Doctor Not Have Schedule #{day_name} at #{time.hour}" unless have_schedule?
    return "You Cannot Choose Past day or Time" if is_past_day? || is_past_time?
    return "Cannot booking doctor 30 minutes before schedule time" unless can_book?
    user.bookings.create(doctor_id: doctor.id, booking_time: time.to_s)
    return 'Success'
  end

  def booking_time(params)
    params['booking_time(1i)'] + "-" + params['booking_time(2i)']+ "-" + params['booking_time(3i)'] + " " +
    params['booking_time(4i)'] + ":" + params['booking_time(5i)']
  end

  def have_schedule?
    return schedule.present?
    return schedules.pluck(:day).include?(day_name)
    return [*schedule.start_time.to_i..schedule.end_time.to_i].include?(time.hour)
  end

  def can_book?
    return false if is_30_minutes_before_start?(schedule)
    return true
  end

  def day_name
    time.strftime('%A')
  end

  def get_doctor(id)
    Doctor.find_by_id(id)
  end

  def doctor_schedules
    @doctor&.schedules
  end

  def is_past_day?
    time.month < Time.now.month && time.day < Time.now.day
  end

  def is_past_time?
    time.month == Time.now.month && time.day == Time.now.day &&  Time.now.hour > schedule.end_time.to_i
  end

  def is_30_minutes_before_start?(schedule)
    time.month == Time.now.month && time.day == Time.now.day && (schedule.start_time.to_i - 1) == Time.now.hour && DateTime.now.minute > 30
  end

  def booking_reach_limit?
    doctor.bookings.count >= 10
  end
end