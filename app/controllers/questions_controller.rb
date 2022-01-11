class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question == "I am going to work"
      @bot = "Great!"
    elsif @question.include? "?"
      @bot = "Silly question, get dressed and go to work!"
    else
      @bot = "I don't care, get dressed and go to work!"
    end
      return @bot
  end
end
