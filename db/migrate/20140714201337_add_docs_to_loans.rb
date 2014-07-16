class AddDocsToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :docs, :string
  end
end
