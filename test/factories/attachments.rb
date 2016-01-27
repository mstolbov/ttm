FactoryGirl.define do
  factory :attachment do
    file {Refile::FileDouble.new("dummy", "logo.png", content_type: "image/png")}
    task
  end

end
