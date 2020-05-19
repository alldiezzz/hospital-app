class BookingService
  attr_reader :user, :params, :doctor, :schedules, :time
  def initialize(user, params)
    @user = user
    @params = params
    @doctor = get_doctor(params[:doctor_id])
    @schedules = doctor_schedules
    @time = booking_time(params).to_datetime
  end

  def create
    return "User Not found" if user.blank?
    return "Doctor Not Have Schedule at #{day_name}" unless have_schedule?
    return "Cannot booking doctor 30 minutes before schedule time" unless can_book?
    user.bookings.create(doctor_id: doctor.id, booking_time: time)
    return 'Success'
  end

  def booking_time(params)
    params['booking_time(1i)'] + "-" + params['booking_time(2i)']+ "-" + params['booking_time(3i)'] + " " +
    params['booking_time(4i)'] + ":" + params['booking_time(5i)']
  end

  def have_schedule?
    schedules.pluck(:day).include?(day_name)
  end

  def can_book?
    schedule = schedules.find_by_day(day_name)
    return false if schedule.blank?
    return false if time.hour > schedule.start_time.to_i
    return false if time.hour == schedule.start_time.to_i && time.minute >= 30
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
end