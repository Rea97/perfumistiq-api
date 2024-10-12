# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'oziel@test.com' }
    password { 'Secret123' }
  end
end
