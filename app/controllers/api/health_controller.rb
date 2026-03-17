# frozen_string_literal: true

module Api
  class HealthController < BaseController
    def show
      render json: { ok: true }
    end
  end
end

