class CreateHrestrictions < ActiveRecord::Migration[5.1]
  def change
    create_table :hrestrictions do |t|
      t.string :name
      t.boolean :active
      t.belongs_to :kid, index: true
      
      t.timestamps
    end
  end
end
