FactoryBot.define do
  factory :task do
    name { "MyString" }
    description { "MyString" }
    position { "MyString" }
    priority { 1 }
    state { false }
    type { "" }
  end
end
