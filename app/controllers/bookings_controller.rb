class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @board = Board.find(params[:board_id])
    @booking = Booking.new
  end

  def create
    @user = current_user
    @board = Board.find(params[:board_id])
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.board = @board

    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at, :end_at)
  end
end
