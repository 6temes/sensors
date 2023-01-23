# frozen_string_literal: true

# == Schema Information
#
# Table name: new_measures
#
#  id         :bigint           not null, primary key
#  datum      :decimal(, )
#  type       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  meter_id   :bigint           not null
#
# Indexes
#
#  index_new_measures_on_meter_id  (meter_id)
#
# Foreign Keys
#
#  fk_rails_...  (meter_id => meters.id)
#
class NewMeasure
  class Temperature < NewMeasure
  end
end
