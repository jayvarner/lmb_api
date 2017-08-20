class CreatePaymentMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_methods do |t|
      t.string :name
      t.string :number
      t.string :email
      t.string :methodtype
      t.integer :date_year
      t.integer :date_month
      t.integer :cvv
      t.integer :routing
      t.timestamps
    end
  end
end
