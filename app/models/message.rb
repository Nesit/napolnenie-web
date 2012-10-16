class Message < ActiveRecord::Base
  attr_accessible :title, :recipient_address, :text

  after_create :send_message

  def send_message
    Notifier.send_message(self).deliver
  end

end
