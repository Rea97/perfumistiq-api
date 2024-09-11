# frozen_string_literal: true

class Perfume < ApplicationRecord
  validates :name, :designer_house, :type_of, presence: true
end
