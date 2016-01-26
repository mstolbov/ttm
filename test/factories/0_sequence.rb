FactoryGirl.define do
  sequence :email do |n|
    "email-#{n}@example.test"
  end

  sequence :string, aliases: [:password] do |n|
    "str#{n}" * 5
  end

end
