class Customer < ApplicationRecord
  has_many :contracts
  validates :name,
            :legal_name,
            :customer_type,
            :document,
            :fiscal_number,
            :contact_name,
            :phone_number,
            :email,
            :address,
            presence: true
end
