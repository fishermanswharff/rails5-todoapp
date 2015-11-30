class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :body, null: false, default: ''
      t.references :todo, index: true
      t.timestamps
    end
  end
end
