class BoardsController < ApplicationController

  def create
    @board = Board.new(boards_params)

    if @board.save
      redirect_to boards_path
    else
      render :new
    end
  end

  def edit
    @board = Board.find(params[:id])
  end

  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
  end

  def new
    @board = Board.new
  end

  def destroy 
    Board.find(params[:id]).destroy
    redirect_to boards_path
  end
  
  private 

    def boards_params
      params.require(:board).permit(:title, :author, :body)
    end
end
