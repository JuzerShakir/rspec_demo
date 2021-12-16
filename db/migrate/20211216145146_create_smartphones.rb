class CreateSmartphones < ActiveRecord::Migration[6.1]
  def change
    create_table :smartphones do |t|
      t.string :brand, null: false
      t.string :model, null: false

      t.timestamps
    end
  end
end
