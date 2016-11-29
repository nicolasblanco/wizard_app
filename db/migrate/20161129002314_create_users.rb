class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address_1
      t.string :address_2
      t.string :zip_code
      t.string :city
      t.string :country
      t.string :phone_number

      t.timestamps
    end
  end
end
