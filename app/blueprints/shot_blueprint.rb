# frozen_string_literal: true

class ShotBlueprint < BaseBlueprint
  fields :user_id, :perfume_id

  view :extended do
    association :user, blueprint: UserBlueprint
    association :perfume, blueprint: PerfumeBlueprint
  end
end
