# Preview all emails at http://localhost:3000/rails/mailers/rebel_mailer
class RebelMailerPreview < ActionMailer::Preview
  def rebel_mail_preview
    RebelMailer.rebel_email(User.first)
  end
end
