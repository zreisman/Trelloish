class Api::BoardsController < ApplicationController

  def create
    board = Board.new(title: board_params[:title], user_id: current_user.id)
    if board.save
      render :json => board, status: 200
    else
      render :json => board, status: 404
    end

  end

  def index
    boards = Board.all
    render :json => boards
  end

  def show
    board = Board.find(params[:id])
    render :json => board, include: :lists
  end

  private

  def board_params
    params.require(:board).permit(:title)
  end
end
