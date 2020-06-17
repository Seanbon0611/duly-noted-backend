class SessionsController < ApplicationController

  def create
    user = User.find_by(username: session_params[:username], email: session_params[:email])
    if user
      render json: {notes: user.notes, user: user}
    else  
      render json: { error: "Does not match"}
    end

  end

  def destroy
      render json: { message: "Logged out!"}
  end

  private

  def session_params 
    params.require(:session).permit(:username, :email)
  end

end