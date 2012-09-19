class CreateOurClients < ActiveRecord::Migration
  def change
    create_table :our_clients do |t|
      t.attachment :logo
      t.string :title
      t.timestamps
    end
  end
end
