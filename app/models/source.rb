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
  GREEN  = 'green'
  string_enum color: [BLUE, RED, GREEN]

  validates :name,
            :status,
            :color,
            presence: true
end
