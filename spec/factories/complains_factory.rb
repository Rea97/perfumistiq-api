# frozen_string_literal: true

FactoryBot.define do
  factory :complain do
    user { nil }
    perfume { nil }
    comment { 'Huele muy mal!' }
  end
end
