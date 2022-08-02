class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, amount)
    @stock[ingredient] += amount
  end

  def enough_ingredients_for?(recipe)
    enough = recipe.ingredients_required.map do |ingredient, quantity|
      quantity <= stock_check(ingredient)
    end
    
    if enough.include?(false)
      false
    else
      true
    end
  end
end
