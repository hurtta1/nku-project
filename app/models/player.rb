class Player < ActiveRecord::Base
  belongs_to :team
  belongs_to :church
  
  validates_presence_of :name, :number, :age, :on => :create
  
  def self.registered()
    where.(Player.assigned = true)
  end
end