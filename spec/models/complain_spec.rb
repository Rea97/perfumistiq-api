# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Complain do
  describe 'validations' do
    it { is_expected.to validate_length_of(:comment).is_at_most(255) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:perfume) }
  end
end
