class Expense < ActiveRecord::Base
  include StringEnum

  ACTIVE   = 'active'
  INACTIVE = 'inactive'
  CANCELED = 'canceled'

  string_enum status: [ACTIVE, INACTIVE, CANCELED]

  validates :description,
            :status,
            :date_expense,
            :currency_value,
            presence: true

  validates :currency_value, currency: true
end
