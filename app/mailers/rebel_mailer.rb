class RebelMailer < ApplicationMailer
  def rebel_email(user, body)
    @user = user
    @body = body
    mail(to: @user.email, subject: 'Rebel Mail')
  end
end
