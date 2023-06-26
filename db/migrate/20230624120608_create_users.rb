# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, null: false, index: { unique: true }
      t.string :role, default: User::USER, null: false

      t.timestamps
    end
  end
end
