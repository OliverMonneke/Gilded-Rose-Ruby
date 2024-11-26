# frozen_string_literal: true

require_relative 'item'

class BackstagePass < Item
  def update_quality
    if @days_remaining <= 0
      @quality = 0
    elsif @days_remaining <= 5
      increase_quality
      increase_quality
      increase_quality
    elsif @days_remaining <= 10
      increase_quality
      increase_quality
    else
      increase_quality
    end
  end
end
