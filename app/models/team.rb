class Team < ActiveRecord::Base
  has_many :players
  belongs_to :churches
  
  validates :name, :coach, :contact, :numplayers, presence: true
  validates :numplayers, numericality: true
  validates :numplayers, inclusion: { in: 1..20 }
  
  def self.has_church(team)
    joins(:churches).where(churches: {cname: self.cname})
  end
end