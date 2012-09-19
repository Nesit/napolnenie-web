class Review < ActiveRecord::Base
  attr_accessible :company_name, :author, :text, :create_date

  def create_date
    read_attribute(:create_date) || Time.zone.now.to_date
  end
end
