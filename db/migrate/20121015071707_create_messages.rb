class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title, :recipient_address
      t.text :text
      t.timestamps
    end
  end
end
