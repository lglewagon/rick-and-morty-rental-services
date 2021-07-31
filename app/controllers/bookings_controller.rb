class BookingsController < ApplicationController

  def new
    character_id = params[:character_id]
    associated_character_id = params[:associated_character_id]
    customer_id = params[:customer_id]
    if user_signed_in? == false
      redirect_to new_user_session_path, alert: "Buuuuuurp … Wubba Lubba dub-dub you need to sign yourself in ! 🤦‍♂️"
    else
      @booking = Booking.new(rick_id, morty_id, customer_id)
    end
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
