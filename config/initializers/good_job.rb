# frozen_string_literal: true

Rails.application.configure do
  config.good_job.execution_mode = :external
  config.good_job.enable_cron = true
  config.good_job.cron = { sync_devices: { cron: '*/10 * * * *', class: 'SyncDevicesJob' } }
end
