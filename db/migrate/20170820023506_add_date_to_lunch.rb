class AddDateToLunch < ActiveRecord::Migration[5.1]
  def change
    add_column :lunches, :day, :datetime
  end
end
