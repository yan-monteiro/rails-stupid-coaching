class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:questions]
    if @questions == "I am going to work"
    @questions = "Great work"

    elsif @questions.end_with?("?")
    @questions = "Silly question, get dressed and go to work!"

    else
      @questions = "I don't care, get dressed and go to work!"
    end
  end
end
