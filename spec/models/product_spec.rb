require 'rails_helper'
RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'to be valid ' do
      category = Category.create(name: 'stickers')
      product = category.products.create(
        name: "corgi",
        price: 100,
        quantity: 20
      )
      expect(product).to be_valid
    end

    it 'not valid without a name' do
      category = Category.create(name: 'stickers')
      product = category.products.create(
        name: nil,
        price: 100,
        quantity: 20
      )
      expect(product).to_not be_valid
    end

    it 'not valid without a price' do
      category = Category.create(name: 'stickers')
      product = category.products.create(
        name: 'corgi',
        price: nil,
        quantity: 20
      )
      expect(product).to_not be_valid
    end

    it 'not valid without a quantity' do
      category = Category.create(name: 'stickers')
      product = category.products.create(
        name: 'corgi',
        price: 20,
        quantity: nil
      )
      expect(product).to_not be_valid
    end

    it 'not valid without a category' do
      # category = Category.create(name: 'stickers')
      product = Product.create(
        name: 'corgi',
        price: 200,
        quantity: 30
      )
      expect(product).to_not be_valid
    end
  end
end