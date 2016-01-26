FactoryGirl.define do
  factory :task do
    name
    description
    user

    trait :started do
      state { :started }
    end
  end

end
