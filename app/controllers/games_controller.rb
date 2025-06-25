class GamesController < ApplicationController
  def index
  end

  def show
    @game = Game.find(params[:id])

    @question = Question.all
  end

  def new
    @game = Game.new()
  end

  def create
    @game = Game.create!()

    redirect_to game_path(@game)
  end

  def update
    @game = Game.find(params[:id])
    if params[:answer] == Question.all[@game.current_question_index].correct_answer
      flash[:notice] = "Correct!"
      @game.increment!(:current_question_index)
    end

    redirect_to game_path(@game)
  end
end
