# frozen_string_literal: true

Sentry.init do |config|
  config.environment = ENV.fetch 'SENTRY_ENV', nil
  config.enabled_environments = %w[review staging production]
  config.breadcrumbs_logger = %i[active_support_logger http_logger]
  config.release = ENV.fetch 'HEROKU_RELEASE_VERSION', nil

  # Set tracesSampleRate to 1.0 to capture 100%
  # of transactions for performance monitoring.
  # We recommend adjusting this value in production
  # config.traces_sample_rate = 1

  # config.async = ->(event, hint) { Sentry::SendEventJob.perform_later event, hint }
end
