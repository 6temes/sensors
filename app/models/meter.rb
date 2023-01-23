# frozen_string_literal: true

# == Schema Information
#
# Table name: meters
#
#  id            :bigint           not null, primary key
#  device_name   :string
#  device_type   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  device_id     :string
#  hub_device_id :string
#
class Meter < ApplicationRecord
  has_many :new_measures, dependent: :nullify
end
