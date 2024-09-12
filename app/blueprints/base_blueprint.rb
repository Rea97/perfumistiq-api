# frozen_string_literal: true

class BaseBlueprint < Blueprinter::Base
  identifier :id

  field :created_at do |object|
    object.created_at.strftime('%Y-%m-%d %H:%M:%S')
  end

  field :updated_at do |object|
    object.updated_at.strftime('%Y-%m-%d %H:%M:%S')
  end
end
