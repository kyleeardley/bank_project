class AddNameOfBorrowerToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :name_of_borrower, :string
  end
end
