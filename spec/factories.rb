FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user-#{n}@example.com" }
  end

  factory :movie do
    sequence(:title) { |n| "item-#{n}" }
  end

  factory :owner do
    association(:user, factory: :user)
    notes { "Great Movie" }

    association(:ownable, factory: :movie)
  end
end