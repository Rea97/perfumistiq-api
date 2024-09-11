# frozen_string_literal: true

FactoryBot.define do
  factory :perfume do
    designer_house { 'MyString' }
    name { 'MyString' }
    type_of { 'MyString' }
  end
end
