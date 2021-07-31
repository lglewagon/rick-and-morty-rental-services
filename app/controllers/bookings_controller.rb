class BookingsController < ApplicationController
  before_action

  def index
    @booking = Booking.all
  end

  def new
    @booking = Booking.new
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
    params.require(:rick_id, :morty_id).permit( :rick_rating_id, :morty_rating_id )
  end
end
