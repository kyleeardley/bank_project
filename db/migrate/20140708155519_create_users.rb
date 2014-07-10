class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :street_address
      t.string :city
      t.string :state
      t.boolean :admin1 
      t.boolean :admin2
      t.boolean :admin3

      t.timestamps
    end
  end
end
