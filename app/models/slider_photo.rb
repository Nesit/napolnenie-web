class SliderPhoto < ActiveRecord::Base
  attr_accessible :image, :page_id

  belongs_to :page

  has_attached_file :image, styles: { medium: "300x300", thumb: "125x125" },
                            path: ":rails_root/public/system/slider_photo/:attachment/:id/:style/:filename",
                            url: "/system/slider_photo/:attachment/:id/:style/:filename",
                            default_style: :thumb, default_url: 'loading.gif'
end
