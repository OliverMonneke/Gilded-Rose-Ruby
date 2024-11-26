class GildedRose
  require_relative 'aged_brie'
  require_relative 'backstage_pass'
  require_relative 'item'
  require_relative 'sulfur'

  attr_accessor :item

  def initialize(name:, days_remaining:, quality:)
    @item = create_item(name)
    @item.days_remaining = days_remaining
    @item.quality = quality
  end

  def tick
    @item.tick
  end

  def days_remaining
    @item.days_remaining
  end

  def quality
    @item.quality
  end

  private

  def create_item(name)
    case name
    when "Aged Brie"
      AgedBrie.new(name)
    when "Backstage passes to a TAFKAL80ETC concert"
      BackstagePass.new(name)
    when "Sulfuras, Hand of Ragnaros"
      Sulfur.new(name)
    else
      Item.new(name)
    end
  end
end
