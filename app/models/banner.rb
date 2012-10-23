class Banner < ActiveRecord::Base
  belongs_to :static_page

  has_attached_file :image, styles: { medium: "975x362!", thumb: "125x125" },
                            path: ":rails_root/public/system/banners/:attachment/:id/:style/:filename",
                            url: "/system/banners/:attachment/:id/:style/:filename",
                            default_style: :thumb

  attr_accessible :static_page_id, :text, :image
end
