class Article < ApplicationRecord
  belongs_to :entity, polymorphic: true
  scope :get_all_date, -> (title){ where(title: title) }
  #
  # scope :get_all_date, lambda { |title| where(title: title) }
  #
  #
  # def self.get_all_date(title)
  #    where(title: title)
  # end


end
