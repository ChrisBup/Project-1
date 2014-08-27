class SessionsController < ApplicationController

  def new
  end

  def create
    curator = Curator.find_by(username: params[:username])

    if curator && curator.authenticate(params[:password])
      session[:curator_id] = curator.id
      redirect_to root_path, notice: "You're signed in as #{curator.username}."
    else
      redirect_to log_in_path, alert: 'log-in fail'
    end

  end

  def demo
    curator = Curator.demo_user
    session[:curator_id] = curator.id
    redirect_to root_path, notice: "You're signed in as #{curator.username}."
  end


  def destroy
    session[:curator_id] = nil
    redirect_to log_in_path, notice: "You're logged out."
  end

end
