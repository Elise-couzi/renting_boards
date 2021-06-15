class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @boards = Board.all
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
    redirect_to board_path(@board)
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
    params.require(:board).permit(:name, :price, :description)
  end
end
