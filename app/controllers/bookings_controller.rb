class BookingsController < ApplicationController
  def new
    get_doctor
    return redirect_to doctor_index_path(@doctor.hospital_id), alert: 'No Dctor Found' if @doctor.blank?
    @booking = Booking.new(doctor_id: @doctor.id)
  end

  def index
    @bookings = current_user.bookings
  end

  def doctor
    get_doctor
    @bookings = @doctor.bookings
  end

  def create
    message = BookingService.new(current_user, create_params).create
    if message == 'Success'
      redirect_to booking_index_path
    else
      redirect_to booking_new_path(doctor_id: create_params[:doctor_id]), alert: message
    end
  end

  def create_params
    params.require(:booking).permit(:doctor_id, :booking_time)
  end

  def get_doctor
    @doctor = Doctor.find_by_id(params[:doctor_id])
  end
end
