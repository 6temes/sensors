# frozen_string_literal: true

# == Schema Information
#
# Table name: measures
#
#  id         :bigint           not null, primary key
#  datum      :decimal(, )      not null
#  type       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  meter_id   :bigint           not null
#
# Indexes
#
#  index_measures_on_meter_id  (meter_id)
#  index_measures_on_type      (type)
#
# Foreign Keys
#
#  fk_rails_...  (meter_id => meters.id)
#
class Measure
  class Temperature < Measure
  end
end
