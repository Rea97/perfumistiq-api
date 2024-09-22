# frozen_string_literal: true

FactoryBot.define do
  factory :compliment do
    user { nil }
    perfume { nil }
    comment { 'Smells so good!' }
  end
end
