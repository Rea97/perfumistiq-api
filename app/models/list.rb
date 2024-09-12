# frozen_string_literal: true

class List < ApplicationRecord
  belongs_to :user
  # rubocop:disable Rails/HasAndBelongsToMany
  has_and_belongs_to_many :perfumes
  # rubocop:enable Rails/HasAndBelongsToMany
end
