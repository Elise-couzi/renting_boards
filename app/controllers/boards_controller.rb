class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query OR category ILIKE :query"
      @boards = Board.where(sql_query, query: "%#{params[:query]}%")
    else
      @boards = Board.all
    end
    # geoloc
    @markers = @boards.geocoded.map do |board|
      {
        lat: board.latitude,
        lng: board.longitude,
        info_window: render_to_string(partial: "shared/info_window", locals: { board: board })
      }
    end
  end

  def show; end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    @user = current_user
    @board.user = @user
    if @board.save
      redirect_to board_path(@board)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @board.update(board_params)
    redirect_to board_path(@board)
  end

  def destroy
    @board.destroy
    redirect_to boards_path
  end

  private

  def set_board
    @board = Board.find(params[:id])
  end

  def board_params
    params.require(:board).permit(:name, :price, :description, :images, :address, :category)
  end
end
