class CreateServiceCategories < ActiveRecord::Migration
  def change
    create_table :service_categories do |t|
      t.integer :position, null: false, default: 999
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
