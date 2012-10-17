class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.integer :static_page_id
      t.text :text
      t.attachment :image
      t.timestamps
    end
  end
end
