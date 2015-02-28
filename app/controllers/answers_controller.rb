class AnswersController < ApplicationController
  def show
    answer = Answer
      .where(question_id: params[:question_id])
      .find(params[:id])
    render json: answer, status: 200
  end

  def index
    answers = Answer.where(question_id: params[:question_id]).order("id")
    render json: answers, status: 200
  end

  def create
    Answer.create(
      question_id: params[:question_id],
      title: params[:title],
      content: params[:content],
      user_id: params[:user_id]
      )
  end

  def new
    @answer = Answer.new
  end

  def delete
    Answer.find(params[:id]).destroy
  end

  def destroy
    Answer.find(params[:id]).destroy
    redirect_to (:back), status: 200
  end

  def edit
    Anwser.find(params[:id]).update(title: params[:title], content: params[:content])
  end

  def upvote
    puts "Trying to upvote answer"
    Answer.find(params[:id]).increment!(:vote_count)
    redirect_to (:back), status: 200
  end

  def downvote
    puts "Trying to downvote the answer"
    puts "="*1000
    Answer.find(params[:id]).decrement!(:vote_count)
    redirect_to (:back), status: 200
  end
end
