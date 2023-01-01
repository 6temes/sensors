# frozen_string_literal: true

# TODO: Uncomment next line after heroku has been configured to use custom domain.
return if true # rubocop:disable Lint/LiteralAsCondition

return unless defined?(Rack::Attack)

return if ENV.fetch('HEROKU_REVIEW_APP', nil) == 'true'

module Rack
  class Attack
    # Allow access only from custom domain.
    blocklist 'block requests using heroku domain in production' do |req|
      if /herokuapp/.match? req.host
        ::Rails.logger.warn 'Rack Attack IP Filtering: blocked request using heroku domain'
        true
      end
    end
  end
end

Rails.application.config.middleware.use Rack::Attack
