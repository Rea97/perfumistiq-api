# frozen_string_literal: true

FactoryBot.define do
  factory :list do
    type_of { 'wishlist' }
    user { nil }
  end
end
