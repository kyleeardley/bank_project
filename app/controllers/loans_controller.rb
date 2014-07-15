class LoansController < ApplicationController
include CurrentUser
before_action :set_current_user, only: [:index, :create, :show]

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


private

	def loan_params
		params.require(:loan).permit(:loan_type, :docs, :financials_docs)
	end

end
