# frozen_string_literal: true

class List < ApplicationRecord
  belongs_to :user
  # rubocop:disable Rails/HasAndBelongsToMany
  has_and_belongs_to_many :perfumes
  # rubocop:enable Rails/HasAndBelongsToMany
  enum :type_of, {
    wishlist: 'wishlist', i_have: 'i_have',
    i_had: 'i_had', watchlist: 'watchlist',
    tested: 'tested', decants: 'decants'
  }
end
