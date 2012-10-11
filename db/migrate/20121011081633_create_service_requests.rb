class CreateServiceRequests < ActiveRecord::Migration
  def change
    create_table :service_requests do |t|
      t.integer :our_service_id
      t.string :name, :phone, :email
      t.text :additionally
      t.boolean :readed, null: false, default: false
      t.timestamps
    end
  end
end
