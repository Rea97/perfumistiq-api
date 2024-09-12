# frozen_string_literal: true

class UserBlueprint < BaseBlueprint
  fields :email

  # association :lists, blueprint: ListBlueprint
end
