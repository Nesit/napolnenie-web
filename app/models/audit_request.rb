class AuditRequest < ActiveRecord::Base
  attr_accessible :url, :email, :phone, :additionally, :readed

  validates :url, :phone, :email, :presence => true
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/

  scope :readed, where(readed: true)
  scope :unreaded, where(readed: false)
end
