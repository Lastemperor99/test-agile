# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PingResponse, type: :model do
  describe '.sample' do
    subject(:sample) { described_class.sample }

    before do
      create(:ping_response, text: 'First response')
      create(:ping_response, text: 'Second response')

      allow(described_class).to receive(:rand).and_return(0)
    end

    it 'returns the first response' do
      expect(sample.text).to eq 'First response'
    end
  end
end
