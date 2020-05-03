# frozen_string_literal: true

class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.integer :quantity, null: false
      t.string :unit, null: false
      t.integer :aliment_id, null: false
      t.integer :recipe_id, null: false
      t.text :notes

      t.timestamps
    end
  end
end
