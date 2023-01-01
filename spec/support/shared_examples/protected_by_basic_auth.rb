# frozen_string_literal: true

RSpec.shared_examples_for 'an endpoint protected by basic auth' do
  before do
    # Setting up the Environment Variables will set up the basic auth
    allow(ENV).to receive(:key?).with('BASIC_AUTH_USERNAME').and_return true
    allow(ENV).to receive(:key?).with('BASIC_AUTH_PASSWORD').and_return true
    allow(ENV).to receive(:fetch).with('BASIC_AUTH_USERNAME').and_return 'username'
    allow(ENV).to receive(:fetch).with('BASIC_AUTH_PASSWORD').and_return 'password'

    request
  end

  it 'is not accessible without the correct basic auth' do
    expect(response).to have_http_status :unauthorized
  end
end
