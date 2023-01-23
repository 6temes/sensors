# frozen_string_literal: true

class MetersController < ApplicationController
  def index
    @temperatures =
      NewMeasure::Temperature
        .joins(:meter)
        .where.not(
          meters: {
            device_name: ['Washitsu Meter', 'Living Room Meter', 'Kitchen Meter'],
          },
        )
        .where(created_at: 5.days.ago..)
        .order(:meter_id, :created_at)

    @humidity =
      NewMeasure::Humidity
        .joins(:meter)
        .where.not(
          meters: {
            device_name: ['Washitsu Meter', 'Living Room Meter', 'Kitchen Meter'],
          },
        )
        .where(created_at: 5.days.ago..)
        .order(:meter_id, :created_at)
  end
end
