# frozen_string_literal: true

class RemoveNameFromLists < ActiveRecord::Migration[7.1]
  def change
    remove_column :lists, :name, :string
  end
end
