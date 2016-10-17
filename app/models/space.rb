class Space < ApplicationRecord
  has_many :transactions
  belongs_to :user

  geocoded_by :street_address
  after_validation :geocode
end
