# frozen_string_literal: true

class ListBlueprint < BaseBlueprint
  fields :type_of
  association :perfumes, blueprint: PerfumeBlueprint
  view :with_user do
    association :user, blueprint: UserBlueprint
  end
end
