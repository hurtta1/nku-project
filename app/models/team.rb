class Team < ActiveRecord::Base
  has_many :players
  
  validates :name, :coach, :contact, presence: true
end