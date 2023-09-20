# frozen_string_literal: true

class PingResponse < ApplicationRecord
  def self.sample
    PingResponse.offset(rand(PingResponse.count)).first
  end
end
