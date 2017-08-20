class CreateLunches < ActiveRecord::Migration[5.1]
  def change
    create_table :lunches do |t|
      t.string :name

      t.timestamps
    end

    create_table :kids_lunches, id: false do |t|
      t.belongs_to :lunch, index: true
      t.belongs_to :kid, index: true
    end
  end
end
