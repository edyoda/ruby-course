class User < ApplicationRecord
  validates :name, presence: true, exclusion: ["Admin", "Super User"]
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {maximum: 10, minimum: 4}
  validates :confirm_password, presence: true, length: {maximum: 10, minimum: 4}
  has_one :image, as: :entity
  has_one :account
  has_many :account_history, through: :account
  accepts_nested_attributes_for :image
  scope :find_first_record, -> (id) { where(id: id)}
  scope :find_first_record2, lambda { |name| where(name: name) }
  # before_save do | ob |
  #   ob # logic
  # end
  def self.find_first_record3(name)
    where(name: name)
  end

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
