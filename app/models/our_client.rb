class OurClient < ActiveRecord::Base
  attr_accessible :logo, :title

  has_attached_file :logo, styles: { medium: "300x300", thumb: "125x125" },
                             path: ":rails_root/public/system/out_client/:attachment/:id/:style/:filename",
                             url: "/system/out_client/:attachment/:id/:style/:filename",
                             default_style: :thumb, default_url: 'loading.gif'
end
