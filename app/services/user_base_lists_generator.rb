# frozen_string_literal: true

class UserBaseListsGenerator
  attr_accessor :user

  def initialize(user)
    self.user = user
  end

  def run
    base_lists.each do |list|
      user.lists.create!(list)
    end
  end

  private

  def base_lists
    [
      { name: 'Lo tengo' },
      { name: 'Lo tuve' },
      { name: 'Wish list' },
      { name: 'Watch list' },
      { name: 'Lo probé' },
      { name: 'Decants' }
    ]
  end
end
