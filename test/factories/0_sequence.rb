FactoryGirl.define do
  sequence :email do |n|
    "email-#{n}@example.test"
  end

  sequence :string, aliases: [:password] do |n|
    "str#{n}" * 5
  end

  sequence :name do |n|
    "name#{n}" * 5
  end

  sequence :text, aliases: [:description] do |n|
    FactoryGirl.generate(:string) * 100
  end

end
