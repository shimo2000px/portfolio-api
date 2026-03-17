# frozen_string_literal: true

module Api
  class ProjectsController < BaseController
    def index
      scope = params[:featured].to_s == "true" ? Project.featured : Project.all
      render json: scope.sorted
    end

    def show
      render json: Project.find(params[:id])
    end
  end
end
