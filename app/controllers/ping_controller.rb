# frozen_string_literal: true

class PingController < ApplicationController
  def show
    render json: { response: PingResponse.sample.text }
  end
end
