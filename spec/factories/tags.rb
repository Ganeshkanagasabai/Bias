FactoryBot.define do
    factory :tag do
        name{ Faker::Name.name}
        color_code{Faker::Color.color_name}\
    end
end
