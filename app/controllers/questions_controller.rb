class QuestionsController < ApplicationController

  def ask
    @question = params[:QUESTION]
  end

  def answer
    ask
    if @question != nil && @question.include?("?")
      @answer = 'Silly question, get dressed and go to work!.'
    elsif @question == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
