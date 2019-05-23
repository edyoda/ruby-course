class SendEmailMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.send_email_mailer.welcome.subject
  #
  def welcome(user)
    @user = user
    mail(to: user.email, subject: 'Welcome to WeInvest', from: 'ifo@weinvest.com')
  end
end
