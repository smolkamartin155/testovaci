FactoryGirl.define do

  factory :product do
    name 'test'
    after(:create) do |product|
      product.variants << create(:variant)
    end
  end
end
