# frozen_string_literal: true

module Api
  class ArticlesController < BaseController
    def index
      render json: Article.sorted
    end

    def show
      render json: Article.find(params[:id])
    end
  end
end
