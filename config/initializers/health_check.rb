# frozen_string_literal: true

HealthCheck.setup do |config|
  config.standard_checks -= ['emailconf'] # PostMark does not like us to ping them

  if Rails.env.production?
    config.basic_auth_username = ENV.fetch 'HEALTH_CHECK_BASIC_AUTH_USERNAME'
    config.basic_auth_password = ENV.fetch 'HEALTH_CHECK_BASIC_AUTH_PASSWORD'
  end
end
