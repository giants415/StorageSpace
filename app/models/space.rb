class Space < ApplicationRecord
  has_many :transactions
  belongs_to :user

  # def address(:street_address, :city, :state, :zip_code)
  #   @address = :street_address.to_s + :city.to_s + :state.to_s + :zip_code.to_s
  # end

  geocoded_by :street_address
  after_validation :geocode

  has_attached_file :photo1, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "no_image.png"
  validates_attachment_content_type :photo1, content_type: /\Aimage\/.*\z/

  has_attached_file :photo2, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "no_image.png"
  validates_attachment_content_type :photo2, content_type: /\Aimage\/.*\z/
end
