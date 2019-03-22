class SendEmailMailer < ApplicationMailer
  def welcome(user)
    @name = user.name
    attachments['car.jpg'] = File.read('/Users/1228369/Desktop/car.jpg')
    mail(to: user.email, subject: "Welcome to weInvest")
  end
end
