# frozen_string_literal: true

class Profile < ApplicationRecord
  validates :name, presence: true
end
