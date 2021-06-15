class BookingsController < ApplicationController
    def index
        @bookings = Booking.all
    end
    
    def new
        @user = User.find(params[:user_id])
        @board = Board.find(params[:board_id])
        @booking.user = @user
        @booking.board =@board
    end
    
    def create
        # @list = List.new(list_params)
        # if @list.save
          #redirect_to list_path(@list)
    #   else
    #       render :new
    #   end
    end
        #   def list_params
    #     params.require(:list).permit(:name)
    #   end
end
