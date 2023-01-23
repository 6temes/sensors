# frozen_string_literal: true

class AddNewMeasure < ActiveRecord::Migration[7.0]
  def change
    create_table :new_measures do |t|
      t.text :type
      t.references :meter, null: false, foreign_key: true
      t.decimal :datum

      t.timestamps
    end

    Measure.find_each do |measure|
      NewMeasure::Humidity.create!(
        meter: measure.meter,
        datum: measure.humidity,
        created_at: measure.created_at,
      )

      NewMeasure::Temperature.create!(
        meter: measure.meter,
        datum: measure.temperature,
        created_at: measure.created_at,
      )
    end
  end
end
