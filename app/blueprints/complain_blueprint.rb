# frozen_string_literal: true

class ComplainBlueprint < BaseBlueprint
  fields :user_id, :perfume_id, :comment
  view :extended do
    association :user, blueprint: UserBlueprint
    association :perfume, blueprint: PerfumeBlueprint
  end
end
