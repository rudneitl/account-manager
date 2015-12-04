require 'rails_helper'

RSpec.describe FiscalYearsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/fiscal_years').to route_to('fiscal_years#index')
    end

    it 'routes to #new' do
      expect(get: '/fiscal_years/new').to route_to('fiscal_years#new')
    end

    it 'routes to #show' do
      expect(get: '/fiscal_years/1').to route_to('fiscal_years#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/fiscal_years/1/edit').to route_to('fiscal_years#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/fiscal_years').to route_to('fiscal_years#create')
    end

    it 'routes to #update' do
      expect(put: '/fiscal_years/1').to route_to('fiscal_years#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/fiscal_years/1').to route_to('fiscal_years#destroy', id: '1')
    end
  end
end
