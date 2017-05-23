class CreateFooDependants < ActiveRecord::Migration[5.0]
  def change
    create_table :foo_dependants do |t|
      t.belongs_to :foo, foreign_key: true, null: false
      t.string :category, null: false
      t.float :value, null: false
      t.timestamps
    end
    add_index :foo_dependants, [:foo_id, :category], unique: true
  end
end
