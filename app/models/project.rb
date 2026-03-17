# frozen_string_literal: true

class Project < ApplicationRecord
  validates :title, presence: true

  scope :featured, -> { where(is_featured: true) }
  scope :sorted, -> { order(is_featured: :desc, sort_order: :asc, created_at: :desc) }
end
