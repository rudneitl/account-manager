class FiscalYear < ActiveRecord::Base
  include StringEnum

  has_many :periods

  # statuses
  ACTIVE   = 'active'
  INACTIVE = 'inactive'
  string_enum status: [ACTIVE, INACTIVE]

  validates :name,
            :year,
            :status,
            presence: true
end
