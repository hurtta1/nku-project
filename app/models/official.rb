class Official < ActiveRecord::Base
  belongs_to :church
  
  has_secure_password
  
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password, presence: true
  validates :password, confirmation: true
end