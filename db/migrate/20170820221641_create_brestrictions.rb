class CreateBrestrictions < ActiveRecord::Migration[5.1]
  def change
    create_table :brestrictions do |t|
      t.string :name
      t.boolean :active
      t.belongs_to :kid, index: true

      t.timestamps
    end
  end
end
