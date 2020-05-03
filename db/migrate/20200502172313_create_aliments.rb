# frozen_string_literal: true

class CreateAliments < ActiveRecord::Migration[6.0]
  def change
    create_table :aliments do |t|
      t.string :name, null: false
      t.integer :food_category_id, index: true
      t.integer :season_start_month, index: true
      t.integer :season_end_month, index: true

      t.timestamps
    end
  end
end
