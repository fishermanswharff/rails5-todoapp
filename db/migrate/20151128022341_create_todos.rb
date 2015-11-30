class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :name
      t.boolean :completed, default: false
      t.references :list, index: true
      t.timestamps
    end
  end
end
