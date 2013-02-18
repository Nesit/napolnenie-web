class StaticPage < ActiveRecord::Base
  has_many :banners

  has_attached_file :image, styles: { thumb: "200x200>" },
                            path: ":rails_root/public/system/static_pages/:attachment/:id/:style/:filename",
                            url: "/system/static_pages/:attachment/:id/:style/:filename",
                            default_style: :thumb

  attr_accessor :banner, :banner_image

  attr_accessible :permalink, :text1, :banner, :banner_image,
                  :title, :keywords, :description, :image, :name

  validates :permalink, :text1, :name, :title, :keywords, :description, presence: true

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
