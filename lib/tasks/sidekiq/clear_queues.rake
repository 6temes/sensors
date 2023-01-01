# frozen_string_literal: true

return unless Rails.env.development?

namespace :sidekiq do
  desc 'Clear all Sidekiq queues in development'
  task clear_queues: :environment do
    require 'sidekiq/api'

    Sidekiq::RetrySet.new.clear
    Sidekiq::ScheduledSet.new.clear
    Sidekiq::DeadSet.new.clear

    Sidekiq::Queue.all.map(&:clear)
  end
end
