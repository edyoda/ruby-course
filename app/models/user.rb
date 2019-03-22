class User < ApplicationRecord
  validates :name, presence: true, exclusion: ["Admin", "Super User"]
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {maximum: 10, minimum: 4}
  validates :confirm_password, presence: true, length: {maximum: 10, minimum: 4}
  has_one :image, as: :entity
  accepts_nested_attributes_for :image

  include PasswordValidator
  validate do |comment|
     comment.validate_password
  end
  def self.validate_user(email, password)
    where(email: email, password: Digest::MD5.hexdigest(password)).last
  end

  before_save :encrypt_password
  def encrypt_password
    self.password = Digest::MD5.hexdigest(password)
    self.confirm_password = Digest::MD5.hexdigest(confirm_password)
  end
end
