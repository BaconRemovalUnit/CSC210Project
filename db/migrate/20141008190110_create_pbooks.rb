class CreatePbooks < ActiveRecord::Migration
  def change
    create_table :pbooks do |t|
      t.string :name
      t.integer :phone
      t.date :birthday

      t.timestamps
    end
  end
end
