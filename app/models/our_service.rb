class OurService < ActiveRecord::Base
  belongs_to :service_category

  validates :service_category, :presence => true

  attr_accessible :title, :text, :service_category_id
end
