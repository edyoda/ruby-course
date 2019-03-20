class User < ApplicationRecord

  def self.validate_user(email, password)
    where(email: email, password: password).last
  end
end
