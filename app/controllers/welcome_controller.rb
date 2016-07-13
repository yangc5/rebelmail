class WelcomeController < ApplicationController
  def index
    @users = User.all
  end

  def send_email
    @users = User.all
    @body = params['Message']
    @users.each do |user|
      RebelMailer.rebel_email(user, @body).deliver
    end
    redirect_to root_path
  end
end
