# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PerfumesController do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/perfumes').to route_to('perfumes#index')
    end

    it 'routes to #show' do
      expect(get: '/perfumes/1').to route_to('perfumes#show', id: '1')
    end

    it 'routes to #create' do
      skip('Not implemented')
      expect(post: '/perfumes').to route_to('perfumes#create')
    end

    it 'routes to #update via PUT' do
      skip('Not implemented')
      expect(put: '/perfumes/1').to route_to('perfumes#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      skip('Not implemented')
      expect(patch: '/perfumes/1').to route_to('perfumes#update', id: '1')
    end

    it 'routes to #destroy' do
      skip('Not implemented')
      expect(delete: '/perfumes/1').to route_to('perfumes#destroy', id: '1')
    end
  end
end
