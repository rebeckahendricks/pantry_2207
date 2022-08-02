require './lib/ingredient'
require './lib/pantry'

describe Pantry do
  describe 'initialize' do
    before do
      @pantry = Pantry.new
    end

    it 'exists' do
      expect(@pantry).to be_instance_of(Pantry)
    end

    it 'has no stock by default' do
      expect(@pantry.stock).to eq({})
    end
  end

  describe 'stock' do
    before do
      @pantry = Pantry.new
      @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
      @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    end

    xit 'can check the stock of a specific ingredient' do
      expect(@pantry.stock_check(@ingredient1)).to eq(0)
    end

    xit 'can restock an ingredient' do
      @pantry.restock(@ingredient1, 5)
      @pantry.restock(@ingredient1, 10)

      expect(@pantry.stock_check(@ingredient1)).to eq(15)

      @pantry.restock(@ingredient2, 7)

      expect(@pantry.stock_check(@ingredient2)).to eq(7)
    end
  end
end
