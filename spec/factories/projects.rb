FactoryBot.define do
  factory :project do
    name { "MyString" }
    description { "MyText" }
    due_date { "2021-05-14" }
    user { nil }
    task { nil }
  end
end
