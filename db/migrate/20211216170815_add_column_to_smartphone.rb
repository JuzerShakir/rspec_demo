class AddColumnToSmartphone < ActiveRecord::Migration[6.1]
  def change
    add_column :smartphones, :battery, :integer
  end
end
