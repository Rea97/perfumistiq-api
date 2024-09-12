# frozen_string_literal: true

class Perfume < ApplicationRecord
  enum :type_of, {
    parfum: 'parfum',
    eau_de_parfum: 'eau_de_parfum',
    eau_de_toilette: 'eau_de_toilette',
    eau_de_cologne: 'eau_de_cologne'
  }
  validates :name, :designer_house, :type_of, presence: true

  # rubocop:disable Rails/HasAndBelongsToMany
  has_and_belongs_to_many :lists
  # rubocop:enable Rails/HasAndBelongsToMany
end
