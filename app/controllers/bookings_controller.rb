class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @board = Board.find(params[:board_id])
    @user = current_user
    @booking = Booking.new
  end

  def create #doit etre appelé par mon bouton submit de la page new
    @user = current_user
    @board = Board.find(params[:board_id])
    @booking.user = @user
    @booking.board = @board
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

end
