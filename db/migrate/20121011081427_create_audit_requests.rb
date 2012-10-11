class CreateAuditRequests < ActiveRecord::Migration
  def change
    create_table :audit_requests do |t|
      t.string :url, :email, :phone
      t.text :additionally
      t.boolean :readed, null: false, default: false
      t.timestamps
    end
  end
end
