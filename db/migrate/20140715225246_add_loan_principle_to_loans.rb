class AddLoanPrincipleToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :loan_principle, :decimal, precision: 12, scale: 2
  end
end
