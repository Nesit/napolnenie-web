class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :permalink, :name
      t.text :text1, :title
      t.text :keywords, :description, null: false, default: ''
      t.attachment :image
      t.timestamps
    end
  end
end
