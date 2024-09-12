# frozen_string_literal: true

class CreateListsPerfumesJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_join_table :lists, :perfumes, column_options: { type: :uuid } do |t|
      t.index %i[list_id perfume_id]
      t.index %i[perfume_id list_id]
    end
  end
end
