# frozen_string_literal: true

class UserBaseListsGenerator
  attr_accessor :user

  def initialize(user)
    self.user = user
  end

  def run
    base_lists.each do |list|
      user.lists.create!(type_of: list)
    end
  end

  private

  def base_lists
    %w[wishlist i_have i_had watchlist tested decants]
  end
end
