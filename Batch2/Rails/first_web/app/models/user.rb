class User < ApplicationRecord
  # validation
  validates :name, presence: true, exclusion: { in: %w(admin superuser) }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { maximum: 30, minimum: 4 }, on: :create
  validates :confirm_password, presence: true, length: { maximum: 30, minimum: 4 }, on: :create
  # custom validate methods
  has_one :image
  accepts_nested_attributes_for :image
  has_many :articles, as: :entity
  validate :verify_password
  def verify_password
    if password != confirm_password
      errors.add(:base, "Password and Confirm password are not matching ")
    end
  end

  before_destroy :write_into_json
  def write_into_json
    logger.info("Creating a file")
    File.open("#{Rails.root}/public/users#{self.id}.json", "w") { |foo|
      foo.write(self.to_json)
    }
  end
  # before_save do
  #   self.name = "fname" + name
  # end

  before_save :encrypt_password
  def encrypt_password
    self.password = Digest::MD5.hexdigest(password)
    self.confirm_password = Digest::MD5.hexdigest(confirm_password)
  end
  # before_destroy do | i |
  #
  # end
  def self.auth(email, password)
    where(email: email, password: Digest::MD5.hexdigest(password)).last
  end
end
