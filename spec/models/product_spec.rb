RSpec.describe Product, type :model do
  describe 'Validations' do

    it 'not valid without a name' do
      category = Category.new(name: 'stickers')
      product = category.products.new(
        name: nil,
        price: 100,
        quantity: 20
      )
      expect(product).to_not be_valid
    end

    it 'not valid without a price' do
      category = Category.new(name: 'stickers')
      product = category.products.new(
        name: 'corgi',
        price: nil,
        quantity: 20
      )
      expect(product).to_not be_valid
    end

    it 'not valid without a quantity' do
      category = Category.new(name: 'stickers')
      product = category.products.new(
        name: 'corgi',
        price: 20,
        quantity: nil
      )
      expect(product).to_not be_valid
    end

    it 'not valid without a category' do
      product = category.products.new(
        name: 'corgi',
        price: 200,
        quantity: 30
      )
      expect(product).to_not be_valid
    end
  end
end