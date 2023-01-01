# frozen_string_literal: true

require 'switchbot'

module SwitchbotClient
  def self.client
    token = ENV.fetch 'SWITCHBOT_TOKEN', nil
    secret = ENV.fetch 'SWITCHBOT_SECRET', nil
    Switchbot::Client.new token, secret
  end
end
