class Official < ActiveRecord::Base
  belongs_to :church
  
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password, presence: true
  validates :password, confirmation: true
end