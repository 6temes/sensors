# frozen_string_literal: true

class SyncDeviceJob < ApplicationJob
  def perform(device_id, device_name)
    status = client.device(device_id).status

    meter =
      Meter.create_with(
        device_name:,
        device_type: status[:body][:device_type],
        hub_device_id: status[:body][:hub_device_id],
      ).find_or_create_by!(device_id:)

    meter.measures.create!(
      humidity: status[:body][:humidity],
      temperature: status[:body][:temperature],
    )
  end

  private

  def client
    @_client ||= SwitchbotClient.client
  end
end
