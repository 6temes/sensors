class RenameNewMeasures < ActiveRecord::Migration[7.0]
  def change
    rename_table :measures, :old_measures
    rename_table :new_measures, :measures

    change_column_null :measures, :type, false
    change_column_null :measures, :datum, false

    add_index :measures, :type

    Measure.where(type: 'NewMeasure::Humidity').update_all type: 'Measure::Humidity' # rubocop:disable Rails/SkipsModelValidations
    Measure.where(type: 'NewMeasure::Temperature').update_all type: 'Measure::Temperature' # rubocop:disable Rails/SkipsModelValidations
  end
end
