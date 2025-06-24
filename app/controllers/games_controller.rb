class GamesController < ApplicationController
  def index
  end

  def show
    @game = Game.find(params[:id])

    @current_question_index = 0

    @question = Question.all
  end

  def new
    @game = Game.new()
  end

  def create
    @game = Game.create!()

    redirect_to game_path(@game)
  end
end
