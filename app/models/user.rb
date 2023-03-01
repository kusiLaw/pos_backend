class User < ApplicationRecord

  validates :name, presence: true, length: { in: 4..30 }  
  validates :email, presence: true, uniqueness: true, length: { in: 4..30 }
  validates :password, presence: true, length: { in: 6..50 }  

end
