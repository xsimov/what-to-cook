class CreateChefs < ActiveRecord::Migration[6.0]
  def change
    create_table :chefs do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :alias, null: false, unique: true
      t.string :password_digest, null: false
      t.string :recovery_password_digest, null: false

      t.timestamps
    end
  end
end
