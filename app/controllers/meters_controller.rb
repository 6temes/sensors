# frozen_string_literal: true

class MetersController < ApplicationController
  def index
    @meters =
      Meter
        .where.not(device_name: ['Washitsu Meter', 'Living Room Meter', 'Kitchen Meter'])
        .includes(:measures)
        .all
  end
end
