class Category < ActiveRecord::Base
  include StringEnum

  has_many :incomes

  # colors
  BLUE = 'blue'
  RED = 'red'
  GREEN = 'green'
  string_enum color: [BLUE, RED, GREEN]

  validates :name,
            :color,
            presence: true
end
