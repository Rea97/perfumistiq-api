# frozen_string_literal: true

class CreateLists < ActiveRecord::Migration[7.1]
  def change
    create_table :lists, id: :uuid do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
