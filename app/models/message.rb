class Message < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :text

  validates :name, :email, :phone, :text, :presence => true
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/

  after_create :send_message

  def send_message
    Notifier.send_message(self).deliver
  end

end
