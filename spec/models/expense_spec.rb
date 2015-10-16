require 'rails_helper'

RSpec.describe Expense, type: :model do
  describe 'ActiveRecord specification' do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:description).of_type(:string) }
    it { is_expected.to have_db_column(:status).of_type(:string) }
    it { is_expected.to have_db_column(:date_expense).of_type(:datetime) }
    it { is_expected.to have_db_column(:currency_value).of_type(:decimal) }
  end

  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:date_expense) }
  it { should validate_presence_of(:currency_value) }
end
