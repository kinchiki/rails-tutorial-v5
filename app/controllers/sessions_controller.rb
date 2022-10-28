class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(Params[:session][:password])
      # redirect users show
    else
      flash.now[:danger] = "Invalid email/password combination"
      render 'new'
    end
  end

  def destory
  end
end
