class Ingredient
  attr_reader :name,
              :unit,
              :calories

  def initialize(info)
    @name = info[:name]
    @unit = info[:unit]
    @calories = info[:calories]
  end
end
