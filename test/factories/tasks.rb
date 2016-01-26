FactoryGirl.define do
  factory :task do
    name
    description
    user

    train :started do
      state { :started }
    end
  end

end
