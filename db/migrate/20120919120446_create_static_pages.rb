class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :permalink
      t.text :text1
      t.timestamps
    end
  end
end
