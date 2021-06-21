class ChangeColumnToAllowNull < ActiveRecord::Migration[5.2]
  def up
    change_column :spots, :address,:string, null: false
    change_column :spots, :latitude,:float, null: false
    change_column :spots, :longitude,:float, null: false
  end

  def down
    change_column :spots, :address,:string
    change_column :spots, :latitude,:float
    change_column :spots, :longitude,:float
  end
end
