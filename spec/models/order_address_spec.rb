require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
  before do
    @order_address = OrderAddress.new(
      user_id: 1,
      item_id: 1,
      postal_code: '123-4567',
      prefecture_id: 2,
      city: '川口市',
      addresses: '1-1',
      building: 'テストビル',
      phone_number: '09012345678',
      token: 'tok_abcdefghijk0000000000000000'
    )
  end

  describe '商品購入' do
    context '購入できる場合' do
      it '全ての値が正しく入力されていれば購入できる' do
        expect(@order_address).to be_valid
      end
    end

    context '購入できない場合' do
      it 'tokenが空では購入できない' do
        @order_address.token = ''
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Token can't be blank")
      end
    end
  end
end
