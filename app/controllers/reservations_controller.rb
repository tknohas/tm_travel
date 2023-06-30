class ReservationsController < ApplicationController
  def index
    @user = current_user
    @reservations = Reservation.all.includes(:rooms)
    @rooms = Room.all
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save
    redirect_to reservations_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def reservation_params
    params.require(:reservation).permit(:check_in_date, :check_out_date, :stay_days, :people_number, :payment)
  end
end
