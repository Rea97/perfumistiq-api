# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserBaseListsGenerator do
  let(:user) { create(:user) }
  let(:service) { described_class.new(user) }

  describe '#run' do
    it 'creates base lists for the user' do
      expect { service.run }.to change { user.lists.count }.by(6)
    end

    it 'creates lists with correct names' do
      service.run
      expect(user.lists.pluck(:name))
        .to match_array(['Lo tengo', 'Lo tuve', 'Wish list', 'Watch list', 'Lo probé', 'Decants'])
    end
  end

  describe '#initialize' do
    it 'sets the user attribute' do
      expect(service.user).to eq(user)
    end
  end
end
