FactoryBot.define do
  factory :item do
    name { 'MyString' }
    info { 'MyText' }
    category_id { 2 }
    sales_status_id { 2 }
    shipping_fee_status_id { 2 }
    prefecture_id { 2 }
    scheduled_delivery_id { 2 }
    price { 300 }

    association :user

    after(:build) do |item|
      item.image.attach(
        io: File.open(Rails.root.join('app/assets/images/furima-logo-color.png')),
        filename: 'furima-logo-color.png'
      )
    end
  end
end
