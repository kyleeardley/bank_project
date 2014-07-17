class Loan < ActiveRecord::Base
  belongs_to :user
  mount_uploader :financials_docs, DocsUploader
  mount_uploader :mortgage_agreement_docs, DocsUploader
  mount_uploader :employment_verification_docs, DocsUploader
  mount_uploader :purchase_contract_docs, DocsUploader
  mount_uploader :Application_docs, DocsUploader
  mount_uploader :title_insurance_docs, DocsUploader
end
