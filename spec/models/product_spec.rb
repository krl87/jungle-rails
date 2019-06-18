RSpec.describe Product, type :model do
  describe 'Validations' do

    it 'not valid without a name' do
      category = Category.new(name: 'stickers')
      product = category.products.new(
        price: 100,
        quantity: 20
      )
      expect(product).to_not be_valid
    end

    it 'not valid without a price' do
      category = Category.new(name: 'stickers')
      product = category.products.new(
        name: 'corgi',
        quantity: 20
      )
      expect(product).to_not be_valid
    end

     it 'not valid without a quantity' do
      category = Category.new(name: 'stickers')
      product = category.products.new(
        name: 'corgi',
        price: 20
      )
      expect(product).to_not be_valid
    end
  end
end