class Source < ActiveRecord::Base
  include StringEnum

  has_many :incomes

  # statuses
  ACTIVE   = 'active'
  INACTIVE = 'inactive'
  string_enum status: [ACTIVE, INACTIVE]

  # colors
  BLUE = 'blue'
  RED  = 'red'
  string_enum color: [BLUE, RED]

  validates :name,
            :status,
            :color,
            presence: true
end
