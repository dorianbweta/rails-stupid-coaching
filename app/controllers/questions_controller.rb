class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "I can't hear you!"
    # Match a regular expression (regex) pattern against a string.
    # The 'i' at the end makes it a case-insensitive match.
    elsif @question =~ /i am going to work/i
      @answer = 'Great!'
    elsif @question.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
