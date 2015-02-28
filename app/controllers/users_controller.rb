class UsersController < ApplicationController
  def new
  end

  def edit
  end

  def delete
  end

  def create
  end

  def login
    id = params[:identifier]
    user = User.find_by(name: id) || User.find_by(email: id)
    puts "=" * 100
    puts user

    puts "Attempting to login user: #{id}"
    if user
      puts "success (login), found: #{id} -- #{user.name}; now checking password..."
      if user.password == params[:password]
        user.password = "hidden"
        render json: user
      else
        puts "password mismatch; got: #{params[:password]}, expected: #{user.password}"
      end
    else
      puts "no user found with given ID: #{id}"
      # redirect_to ("/index")
    end
  end

  def show
    puts "HI"
    redirect_to ("/index")
  end

  def questions
    questions = Question.where(user_id: params[:user_id])
    render json: questions
  end

  def answers
    answers = Answer.where(user_id: params[:user_id])
    render json: answers
  end

  def index
    users = User.all
    render json: users
  end
end
