class QuestionsController < ApplicationController

  def answer
    @ask = params[:ask]
    @answer = coaching_answer(@ask)
  end

  def ask
  end

  def coaching_answer(ask)
    if ask.end_with?('?')
      'Silly question, get dressed and go to work!'
    elsif ask.include?('?')
      ''
    else
      'I don\t care, get dressed and go to work!'
    end
  end
end
