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
require 'rails_helper'

RSpec.describe Measure do
  pending "add some examples to (or delete) #{__FILE__}"
end
