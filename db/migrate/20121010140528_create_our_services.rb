class CreateOurServices < ActiveRecord::Migration
  def change
    create_table :our_services do |t|
      t.integer :service_category_id
      t.string :title
      t.text :text
      t.timestamps
    end
  end
end
