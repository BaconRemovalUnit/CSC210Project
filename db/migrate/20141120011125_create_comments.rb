class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :item
      t.integer :user

      t.timestamps
    end
  end
end
