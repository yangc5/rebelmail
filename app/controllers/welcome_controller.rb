class WelcomeController < ApplicationController
  def send_email
    @users = User.all
    @users.each do |user|
      RebelMailer.rebel_email(user).deliver
    end
    redirect_to root_path
  end
end
