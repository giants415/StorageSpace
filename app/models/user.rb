class User < ApplicationRecord
  has_secure_password
  has_many :transactions
  has_many :spaces

  def self.confirm(params)
  @user = User.find_by({email: params[:email]})
  @user ? @user.authenticate(params[:password]) : false
  end
  validates :email, uniqueness:true

  has_attached_file :avatar, styles: { thumb: "300x300>" }, default_url: "empty_profile.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
