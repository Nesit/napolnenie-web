class StaticPage < ActiveRecord::Base
  has_attached_file :image, styles: { thumb: "200x200>" },
                            path: ":rails_root/public/system/static_pages/:attachment/:id/:style/:filename",
                            url: "/system/static_pages/:attachment/:id/:style/:filename",
                            default_style: :thumb, default_url: 'loading.gif'

  attr_accessible :permalink, :text1,
                  :title, :keywords, :description, :image

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
