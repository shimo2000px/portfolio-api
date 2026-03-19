# frozen_string_literal: true

class Skill < ApplicationRecord
  validates :name, presence: true

  scope :sorted, -> { order(sort_order: :asc, name: :asc) }
end
