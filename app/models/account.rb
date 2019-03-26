class Account < ApplicationRecord
  belongs_to :user
  has_many :account_history
end
