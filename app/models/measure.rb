# frozen_string_literal: true

# == Schema Information
#
# Table name: measures
#
#  id          :bigint           not null, primary key
#  humidity    :integer
#  temperature :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  meter_id    :bigint           not null
#
# Indexes
#
#  index_measures_on_meter_id  (meter_id)
#
# Foreign Keys
#
#  fk_rails_...  (meter_id => meters.id)
#
class Measure < ApplicationRecord
  belongs_to :meter

  def created_at_rounded
    created_at.change({ sec: 0 })
  end
end
