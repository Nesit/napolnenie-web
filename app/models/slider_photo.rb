class SliderPhoto < ActiveRecord::Base
  attr_accessible :image, :static_page_id

  belongs_to :static_page

  has_attached_file :image, styles: { medium: "975x362!", thumb: "125x125" },
                            path: ":rails_root/public/system/slider_photo/:attachment/:id/:style/:filename",
                            url: "/system/slider_photo/:attachment/:id/:style/:filename",
                            default_style: :thumb, default_url: 'loading.gif'
end
