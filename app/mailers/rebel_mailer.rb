class RebelMailer < ApplicationMailer
  def rebel_email(user)
    @user = user
    mail(to: @user.email, subject: 'Rebel Mail')
  end
end
