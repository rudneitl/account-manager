class Income < ActiveRecord::Base
  include StringEnum

  belongs_to :source

  ACTIVE   = 'active'
  INACTIVE = 'inactive'
  CANCELED = 'canceled'

  string_enum status: [ACTIVE, INACTIVE, CANCELED]

  validates :description,
            :status,
            :date_income,
            :currency_value,
            presence: true

  validates :currency_value, currency: true
end
