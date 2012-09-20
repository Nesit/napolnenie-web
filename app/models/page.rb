class Page < ActiveRecord::Base
  attr_accessible :permalink, :text1, :slider_photos_attributes

  has_many :slider_photos,  dependent: :destroy

  accepts_nested_attributes_for :slider_photos, allow_destroy: true, reject_if: :all_blank
end
