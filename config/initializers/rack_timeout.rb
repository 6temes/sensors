# frozen_string_literal: true

return unless defined?(Rack::Timeout)

Rails.application.config.middleware.insert_before(
  Rack::Runtime,
  Rack::Timeout,
  service_timeout: Integer(ENV.fetch('RACK_TIMEOUT_SERVICE_TIMEOUT', 10)),
)
