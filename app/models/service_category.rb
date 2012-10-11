class ServiceCategory < ActiveRecord::Base
  attr_accessible :title, :description, :position
  has_many :our_services
end
