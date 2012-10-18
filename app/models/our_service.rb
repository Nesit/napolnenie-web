class OurService < ActiveRecord::Base
  belongs_to :service_category

  has_many :service_requests

  validates :service_category, :presence => true

  attr_accessible :title, :text, :service_category_id, :hint
end
