class StaticPage < ActiveRecord::Base
  attr_accessible :permalink, :text1, :slider_photos_attributes

  has_many :slider_photos,  dependent: :destroy

  accepts_nested_attributes_for :slider_photos, allow_destroy: true, reject_if: :all_blank

  def to_param
    permalink
  end

  class << self
    def find_page(permalink)
      permalink = permalink.to_s if permalink.class.name == "Symbol"
      find_by_permalink(permalink.to_s)
    end
  end

end
