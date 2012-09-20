class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :permalink
      t.text :text1
      t.timestamps
    end
  end
end
