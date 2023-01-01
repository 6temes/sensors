# frozen_string_literal: true

class CreateMeters < ActiveRecord::Migration[7.0]
  def change
    create_table :meters do |t|
      t.string :device_id
      t.string :device_type
      t.string :device_name
      t.string :hub_device_id

      t.timestamps
    end

    create_table :measures do |t|
      t.references :meter, null: false, foreign_key: true
      t.integer :humidity
      t.decimal :temperature

      t.timestamps
    end
  end
end
