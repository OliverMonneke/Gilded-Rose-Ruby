# frozen_string_literal: true

require_relative 'item'

class BackstagePass < Item
  def update_quality
    super

    if @days_remaining <= 5
      increase_quality
    end

    if @days_remaining <= 10
      increase_quality
    end

    increase_quality
  end
end
