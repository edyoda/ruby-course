class SendNewletter
  def self.export_user_email_ids
    User.all
  end
  def self.sending
    self.export_user_email_ids.each do | i |
      UserMailer.welocome(i).deliver_now!
    end
  end
end
