# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'meters#index'

  resources :meters, only: %i[index]

  with_dev_auth =
    lambda do |app|
      Rack::Builder.new do
        if ENV.fetch('BASIC_AUTH_USERNAME', false) && ENV.fetch('BASIC_AUTH_PASSWORD', false)
          use Rack::Auth::Basic do |username, password|
            ActiveSupport::SecurityUtils.secure_compare(
              Digest::SHA256.hexdigest(username),
              Digest::SHA256.hexdigest(ENV.fetch('BASIC_AUTH_USERNAME')),
            ) &
              ActiveSupport::SecurityUtils.secure_compare(
                Digest::SHA256.hexdigest(password),
                Digest::SHA256.hexdigest(ENV.fetch('BASIC_AUTH_PASSWORD')),
              )
          end
        end

        run app
      end
    end

  mount with_dev_auth.(GoodJob::Engine), at: 'good_job'
end
