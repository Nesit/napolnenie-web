class Review < ActiveRecord::Base
  attr_accessible :company_name, :author, :text, :create_date

  def create_date
    read_attribute(:create_date) || Time.zone.now.to_date
  end

  def for_timeline
    year = create_date.strftime("%Y")
    month = create_date.strftime("%m")
    { year: year, month: month, author: author, company_name: company_name, text: text }
  end
end
