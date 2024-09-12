# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Perfume do
  it 'has a valid factory' do
    expect(build(:perfume)).to be_valid
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:designer_house) }
    it { is_expected.to validate_presence_of(:type_of) }
  end
end
