# frozen_string_literal: true

class Aliment < ApplicationRecord
  validate :season_start_month, :season_end_month, inclusion: { within: 0..12 }
end
