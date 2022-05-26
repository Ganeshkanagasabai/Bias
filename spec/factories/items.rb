FactoryBot.define do
    factory :item do
        name{ Faker::Name.name}
        description{'kumbakonam'}
        image{"https://via.placeholder.com/150/0000FF/FFFFFF/?text=Digital.com"}
        example{'chennai'}
    end
end
