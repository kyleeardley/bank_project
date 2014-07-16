class AddNameOfBankerToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :name_of_banker, :string
  end
end
