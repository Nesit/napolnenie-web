class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :company_name, :author
      t.text :text
      t.date :create_date
      t.timestamps
    end
  end
end
