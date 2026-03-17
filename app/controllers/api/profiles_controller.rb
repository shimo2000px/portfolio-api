# frozen_string_literal: true

module Api
  class ProfilesController < BaseController
    def show
      profile = Profile.first
      return render json: { error: "profile_not_found" }, status: :not_found unless profile

      render json: profile
    end
  end
end

