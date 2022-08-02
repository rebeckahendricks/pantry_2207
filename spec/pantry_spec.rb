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
end
