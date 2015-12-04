class Period < ActiveRecord::Base
  include StringEnum

  belongs_to :fiscal_year

  has_many :incomes
  has_many :expenses

  # statuses
  ACTIVE = 'active'
  INACTIVE = 'inactive'
  string_enum status: [ACTIVE, INACTIVE]

  validates :name,
            :status,
            :initial_date,
            :final_date,
            presence: true
end
