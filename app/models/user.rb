class User < ApplicationRecord
  has_many :transactions
  has_many :spaces
end
