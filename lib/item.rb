# frozen_string_literal: true

class Item
  MIN_QUALITY = 0
  MAX_QUALITY = 50

  attr_accessor :name, :days_remaining, :quality

  def initialize(name)
    @name = name
  end

  def tick
    update_quality
    update_sell_in
  end

  def update_quality
    if @quality > 1 && @days_remaining <= 0
      decrease_quality
      decrease_quality
    elsif @quality > 0
      decrease_quality
    end
  end

  def update_sell_in
    decrease_sell_in
  end

  def decrease_quality
    if @quality > MIN_QUALITY
      @quality -= 1
    end
  end

  def decrease_sell_in
    @days_remaining -= 1
  end

  def increase_quality
    if @quality < MAX_QUALITY
      @quality += 1
    end
  end

  def increase_sell_in
    @days_remaining += 1
  end
end
