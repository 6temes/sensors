# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_basic_auth

  private

  def set_basic_auth
    unless basic_auth_env_vars_present?
      if Rails.env.production? # rubocop:disable Style/GuardClause
        raise "Auth isn't configured"
      else
        return
      end
    end

    http_basic_authenticate_or_request_with(
      name: ENV.fetch('BASIC_AUTH_USERNAME'),
      password: ENV.fetch('BASIC_AUTH_PASSWORD'),
    )
  end

  def basic_auth_env_vars_present?
    ENV.key?('BASIC_AUTH_USERNAME') || ENV.key?('BASIC_AUTH_PASSWORD')
  end
end
