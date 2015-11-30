class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name, null: false
      t.string :url_slug
      t.timestamps
    end

    add_index :lists, :name
  end
end
