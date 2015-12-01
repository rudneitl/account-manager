class Expense < ActiveRecord::Base
  include StringEnum

  belongs_to :source
  belongs_to :category
  belongs_to :period

  # statuses
  ACTIVE   = 'active'
  INACTIVE = 'inactive'
  CANCELED = 'canceled'
  string_enum status: [ACTIVE, INACTIVE, CANCELED]

  validates :establishment,
            :due_date,
            :status,
            presence: true

  validates :currency_value, currency: true
end
