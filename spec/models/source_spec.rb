require 'rails_helper'

RSpec.describe Source, type: :model do
  describe 'ActiveRecord specification' do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:description).of_type(:string) }
    it { is_expected.to have_db_column(:color).of_type(:string) }
    it { is_expected.to have_db_column(:status).of_type(:string) }
    it { is_expected.to have_many(:incomes) }
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:color) }
  it { should validate_presence_of(:status) }
end
