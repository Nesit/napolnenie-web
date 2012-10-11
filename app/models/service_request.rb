class ServiceRequest < ActiveRecord::Base
  belongs_to :our_service

  attr_accessible :our_service_id, :name, :phone, :email, :additionally, :readed

  scope :readed, where(readed: true)
  scope :unreaded, where(readed: false)
end
