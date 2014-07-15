class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.references :user, index: true
      t.string :loan_type
      t.datetime :origination_date
      t.datetime :closed_date
      t.string :loan_status
      t.float :loan_amount
      t.float :loan_interest_rate
      t.string :loan_term
      t.string :financials_docs
      t.string :purchase_contract_docs
      t.string :Application_docs
      t.string :title_insurance_docs
      t.string :employment_verification_docs
      t.text :description
      t.string :mortgage_agreement_docs

      t.timestamps
    end
  end
end
