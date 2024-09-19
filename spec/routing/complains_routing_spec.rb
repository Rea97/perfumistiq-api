# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ComplainsController do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/complains').to route_to('complains#index')
    end

    it 'routes to #show' do
      expect(get: '/complains/1').to route_to('complains#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/complains').to route_to('complains#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/complains/1').to route_to('complains#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/complains/1').to route_to('complains#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/complains/1').to route_to('complains#destroy', id: '1')
    end
  end
end
