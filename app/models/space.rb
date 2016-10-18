class Space < ApplicationRecord
  has_many :transactions
  belongs_to :user

  geocoded_by :street_address
  after_validation :geocode

  has_attached_file :photo1, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "no_image.png"
  validates_attachment_content_type :photo1, content_type: /\Aimage\/.*\z/

  has_attached_file :photo2, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "no_image.png"
  validates_attachment_content_type :photo2, content_type: /\Aimage\/.*\z/
end
