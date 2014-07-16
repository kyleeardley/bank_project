class LoansController < ApplicationController
include CurrentUser
before_action :set_current_user, only: [:index, :create, :show, :new]

def index

	@loans=Loan.all
end


def new
	@loan=Loan.new
end

def create
	@loan = @current_user.loans.build(loan_params)
	if @loan.save
		redirect_to @loan
	end
end

def destroy

end

def show
	#@loan= Loan.find(params[:id])	
end




private

	def loan_params
		params.require(:loan).permit(:origination_date, :closed_date,
		:loan_status, :loan_principle, :name_of_borrower,:loan_interest_rate, :loan_term, 
		:mortgage_agreement_docs, :employment_verification_docs, 
		:purchase_contract_docs, :loan_type, :financials_docs, :Application_docs,
		:title_insurance_docs)
	end

end
