# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ShotsController do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/shots').to route_to('shots#index')
    end

    it 'routes to #show' do
      expect(get: '/shots/1').to route_to('shots#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/shots').to route_to('shots#create')
    end

    it 'routes to #destroy' do
      expect(delete: '/shots/1').to route_to('shots#destroy', id: '1')
    end
  end
end
