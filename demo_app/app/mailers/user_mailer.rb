class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welocome.subject
  #
  def welocome(user)
    @user_name = user.name
    attachments['lucid-roundup-TA.jpg'] = File.read('/Users/1228369/Desktop/lucid-roundup-TA.jpg')
    mail(to: user.email, subject: "Test Email from Cernner app")
  end
end
