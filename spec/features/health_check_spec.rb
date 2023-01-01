# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Health Check', js: true do
  it 'works' do
    visit '/health_check/database'

    expect(page).to have_content 'success'
  end
end
