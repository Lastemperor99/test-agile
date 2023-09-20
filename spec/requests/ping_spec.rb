# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'The Ping', type: :request do
  subject(:ping) { get '/ping' }

  context 'when 1 ping response exist' do
    before do
      create(:ping_response, text: 'Devop is cool!')
    end

    it 'responds with that ping response' do
      ping

      expect(JSON.parse(response.body)).to eq({ 'response' => 'Devop is cool!' })
    end
  end
end
