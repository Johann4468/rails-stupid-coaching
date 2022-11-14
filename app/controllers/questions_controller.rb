class QuestionsController < ApplicationController
  def ask
    @question
  end

  def answer
    @answer = []
    @answer = if params[:question] == 'I am going to work'
                'Great'
              elsif params[:question].include? '?'
                'Silly question, get dressed and go to work'
              else
                'I don`t care, get dressed and go to work'
              end
  end
end
