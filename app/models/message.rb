class Message < ActiveRecord::Base
  attr_accessible :title, :recipient_address, :text
end
