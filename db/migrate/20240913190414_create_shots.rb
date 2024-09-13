# frozen_string_literal: true

class CreateShots < ActiveRecord::Migration[7.1]
  def change
    create_table :shots, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :perfume, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
