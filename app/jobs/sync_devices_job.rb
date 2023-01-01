# frozen_string_literal: true

class SyncDevicesJob < ApplicationJob
  def perform
    client.devices[:body][:device_list]
      .select { _1[:device_type].in? %w[Meter MeterPlus] }
      .map { [_1[:device_id], _1[:device_name]] }
      .each { SyncDeviceJob.perform_later(*_1) }
  end

  private

  def client
    @_client ||= SwitchbotClient.client
  end
end
