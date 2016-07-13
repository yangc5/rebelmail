class WelcomeController < ApplicationController
  def index
    @users = User.all
  end

  def send_email
    @users = User.all
    @users.each do |user|
      RebelMailer.rebel_email(user).deliver
    end
    redirect_to root_path
  end
end
