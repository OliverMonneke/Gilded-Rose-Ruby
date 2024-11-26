# frozen_string_literal: true

require_relative 'item'

class AgedBrie < Item
  def update_quality
  end

  def update_sell_in
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
