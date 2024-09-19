# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ComplimentsController do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/compliments').to route_to('compliments#index')
    end

    it 'routes to #show' do
      expect(get: '/compliments/1').to route_to('compliments#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/compliments').to route_to('compliments#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/compliments/1').to route_to('compliments#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/compliments/1').to route_to('compliments#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/compliments/1').to route_to('compliments#destroy', id: '1')
    end
  end
end
