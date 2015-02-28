class QuestionsController < ApplicationController
  def show
    render json: Question.find(params[:id]), status: 200
  end

  def index
    questions = Question.all
    render json: questions, status: 200
  end

  def create
    Question.create(
      title: params[:title],
      content: params[:content],
      user_id: params[:user_id]
      )
  end

  def new
    @question = Question.new
  end

  def delete
    Question.find(params[:id]).destroy
  end

  def edit
    Question.find(params[:id]).update(
      title: params[:title],
      content: params[:content]
      )
  end

 def upvote
    Question.find(params[:id]).increment!(:vote_count)
    redirect_to :back, status: 200
  end

  def downvote
    Question.find(params[:id]).decrement!(:vote_count)
    redirect_to :back, status:200
  end

end
