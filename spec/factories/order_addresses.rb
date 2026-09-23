FactoryBot.define do
  factory :order_address do
    user_id { 1 }
    item_id { 1 }
    postal_code { '123-4567' }
    prefecture_id { 2 }
    city { '川口市' }
    addresses { '1-1' }
    building { 'テストビル' }
    phone_number { '09012345678' }
    token { 'tok_abcdefghijk00000000000000000' }
  end
end
