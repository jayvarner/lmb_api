class AddDescriptionLunch < ActiveRecord::Migration[5.1]
  def change
      add_column :lunches, :description, :string
  end
end
