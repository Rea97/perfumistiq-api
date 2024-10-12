# frozen_string_literal: true

class AddTypeOfToLists < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :type_of, :string
    add_index :lists, :type_of
  end
end
