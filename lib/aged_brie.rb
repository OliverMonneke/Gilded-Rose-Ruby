# frozen_string_literal: true

require_relative 'item'

class AgedBrie < Item
  def update_quality
    if @days_remaining <= 5
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
