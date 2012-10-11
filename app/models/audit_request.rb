class AuditRequest < ActiveRecord::Base
  attr_accessible :url, :email, :phone, :additionally, :readed

  scope :readed, where(readed: true)
  scope :unreaded, where(readed: false)
end
