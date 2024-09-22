# frozen_string_literal: true

class Complain < ApplicationRecord
  belongs_to :user
  belongs_to :perfume
  validates :comment, length: { maximum: 255 }
end
