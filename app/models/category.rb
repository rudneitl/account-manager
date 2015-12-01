class Category < ActiveRecord::Base
  include StringEnum

  has_many :incomes

  # colors
  BLUE= 'blue'
  RED = 'red'
  string_enum color: [BLUE, RED]

  validates :name,
            :color,
            presence: true
end
