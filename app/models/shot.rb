# frozen_string_literal: true

class Shot < ApplicationRecord
  belongs_to :user
  belongs_to :perfume
end
