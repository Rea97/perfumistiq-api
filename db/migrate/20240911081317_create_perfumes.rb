# frozen_string_literal: true

class CreatePerfumes < ActiveRecord::Migration[7.1]
  def change
    create_table :perfumes, id: :uuid do |t|
      t.string :name
      t.string :designer_house
      t.string :type_of

      t.timestamps
    end
  end
end
