class Event < ActiveRecord::Base
  validates :name, :location, :eventdate, :description, presence: true
end