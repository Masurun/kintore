class QuestionsController < ApplicationController
  def index
    @questions=Question.all.includes(:user).order('created_at DESC')
  end

  def new
    @question = Question.new 
  end

  def create
    @question = Question.new(questions_params) #←ここを追記
    if @question.save
      return redirect_to questions_path
    else
      render :new
    end
  end


  private
  def questions_params
    params.require(:question).permit(:video_question,:content).merge(user_id: current_user.id)
  end
end
