# frozen_string_literal: true

class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.text :description, size: :medium
      t.integer :number_of_people, index: true
      t.text :instructions, null: false
      t.integer :time_to_cook_in_s, default: 0

      t.timestamps
    end
  end
end
