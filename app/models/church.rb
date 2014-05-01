class Church < ActiveRecord::Base
  has_many :players
  
  def self.has_team(church)
    joins(:teams).where(teams: {cname: self.cname})
  end
end