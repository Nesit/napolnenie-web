class AddKeywordsToOurService < ActiveRecord::Migration
  def change
    add_column :our_services, :keywords, :string
    add_column :our_services, :description, :string
  end
end
