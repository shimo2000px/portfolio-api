# frozen_string_literal: true

class Article < ApplicationRecord
  validates :title, :service, :url, presence: true

  scope :sorted, -> { order(sort_order: :asc, published_at: :desc, created_at: :desc) }
end
