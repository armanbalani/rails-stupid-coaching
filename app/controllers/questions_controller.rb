class QuestionsController < ApplicationController
  # ANSWERS = { 1 => { answer: 'Great!' },
  #             2 => { answer: 'Silly question, get dressed and go to work!' },
  #             3 => { answer: 'I dont care, get dressed and go to work' } }
  def ask
  end

  def answer
    if params[:question] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:question].include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
