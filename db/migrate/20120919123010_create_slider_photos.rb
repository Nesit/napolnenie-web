class CreateSliderPhotos < ActiveRecord::Migration
  def change
    create_table :slider_photos do |t|
      t.attachment :image
      t.integer :static_page_id
      t.timestamps
    end
  end
end
