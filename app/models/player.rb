class Player < ActiveRecord::Base
  belongs_to :team
  belongs_to :church
  
  validates :name, :number, :age, presence: true
end