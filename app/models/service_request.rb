class ServiceRequest < ActiveRecord::Base
  belongs_to :our_service

  attr_accessible :our_service_id, :name, :phone, :email, :additionally, :readed

  validates :name, :our_service_id, :phone, :email, :presence => true
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/

  scope :readed, where(readed: true)
  scope :unreaded, where(readed: false)
end
