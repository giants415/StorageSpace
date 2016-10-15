class User < ApplicationRecord
  has_secure_password
  has_many :transactions
  has_many :spaces

  def self.confirm(params)
  @user = User.find_by({email: params[:email]})
  @user ? @user.authenticate(params[:password]) : false
  end
  validates :email, uniqueness:true
end
