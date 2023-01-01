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
FactoryBot.define do
  factory :meter do
    device_id { 'MyString' }
    device_type { 'MyString' }
    device_name { 'MyString' }
    hub_device_id { 'MyString' }
    humidity { 1 }
    temperature { '9.99' }
  end
end
