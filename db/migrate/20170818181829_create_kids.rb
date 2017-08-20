class CreateKids < ActiveRecord::Migration[5.1]
  def change
    create_table :kids do |t|
      t.string :name
      t.string :school
      t.float :balance
      t.boolean :autopay
      t.integer :default_method
      t.timestamps
    end
  end
end
