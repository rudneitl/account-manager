require 'rails_helper'

RSpec.describe Expense, type: :model do
  describe 'ActiveRecord specification' do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:expense_date).of_type(:date) }
    it { is_expected.to have_db_column(:establishment).of_type(:string) }
    it { is_expected.to have_db_column(:description).of_type(:string) }
    it { is_expected.to have_db_column(:currency_value).of_type(:decimal) }
    it { is_expected.to have_db_column(:due_date).of_type(:date) }
    it { is_expected.to have_db_column(:status).of_type(:string) }

    it { is_expected.to have_db_column(:period_id).of_type(:integer) }
    it { is_expected.to have_db_column(:source_id).of_type(:integer) }
    it { is_expected.to have_db_column(:category_id).of_type(:integer) }

    it { is_expected.to belong_to(:period) }
    it { is_expected.to belong_to(:source) }
    it { is_expected.to belong_to(:category) }
  end

  it { should validate_presence_of(:establishment) }
  it { should validate_presence_of(:due_date) }
  it { should validate_presence_of(:status) }
end
