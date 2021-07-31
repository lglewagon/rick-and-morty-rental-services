class BookingsController < ApplicationController
  before_action

  def new
    rick_id = params[:rick_id]
    morty_id = params[:morty_id]
    customer_id = params[:customer_id]
    @booking = Booking.new(rick_id, morty_id, customer_id)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:rick_id, :morty_id).permit(:rick_rating_id, :morty_rating_id)
  end
end
