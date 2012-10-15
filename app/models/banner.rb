class Banner < ActiveRecord::Base
  belongs_to :static_page
  
  attr_accessible :static_page_id, :text
end
