require 'rails_helper'

RSpec.describe Income, type: :model do
  describe 'ActiveRecord specification' do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:description).of_type(:string) }
    it { is_expected.to have_db_column(:status).of_type(:string) }
    it { is_expected.to have_db_column(:date_income).of_type(:datetime) }
    it { is_expected.to have_db_column(:currency_value).of_type(:decimal) }
    it { is_expected.to belong_to(:source) }
  end

  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:date_income) }
  it { should validate_presence_of(:currency_value) }
end
