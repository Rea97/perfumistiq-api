# frozen_string_literal: true

class CreateComplains < ActiveRecord::Migration[7.1]
  def change
    create_table :complains, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :perfume, null: false, foreign_key: true, type: :uuid
      t.string :comment

      t.timestamps
    end
  end
end
