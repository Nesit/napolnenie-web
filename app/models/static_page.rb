class StaticPage < ActiveRecord::Base
  has_many :slider_photos,  dependent: :destroy

  has_attached_file :image, styles: { thumb: "200x200>" },
                            path: ":rails_root/public/system/static_pages/:attachment/:id/:style/:filename",
                            url: "/system/static_pages/:attachment/:id/:style/:filename",
                            default_style: :thumb, default_url: 'loading.gif'

  attr_accessible :permalink, :text1, :slider_photos_attributes,
                  :title, :keywords, :description, :image

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
