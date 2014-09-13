class Instructor::QuestionsController < Instructor::ApplicationController
  def index
    @unanswered_questions = Question.where(answer: nil)
  end

  def answer
    @question = Question.find(params[:id])
    @question.update(answer: params[:answer])
    redirect_to instructor_questions_path
  end
end
