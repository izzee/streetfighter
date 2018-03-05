class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    @user = user.try(:authenticate, params[:user][:passwords])
    if @user
      session[:user_id] = @user.id
      redirect_to controller: "users", action: :show
    else
      redirect_to controller: "sessions", action: :new
    end
  end

end