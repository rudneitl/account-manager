class Source < ActiveRecord::Base
  include StringEnum

  has_many :incomes

  ACTIVE= 'active'
  INACTIVE= 'inactive'

  string_enum status: [ACTIVE, INACTIVE]

  validates :name,
            :status,
            presence: true
end
