class Product < ApplicationRecord
  has_many :images, as: :entity
end
