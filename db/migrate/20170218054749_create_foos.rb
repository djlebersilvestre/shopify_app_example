class CreateFoos < ActiveRecord::Migration[5.0]
  def change
    create_table :foos do |t|
      t.string :name, null: false
      t.timestamps
    end
    add_index :foos, :name, unique: true
  end
end
