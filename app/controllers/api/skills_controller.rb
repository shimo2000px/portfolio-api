# frozen_string_literal: true

module Api
  class SkillsController < BaseController
    def index
      render json: Skill.sorted
    end

    def show
      render json: Skill.find(params[:id])
    end
  end
end
