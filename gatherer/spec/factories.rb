FactoryBot.define do
  factory :project do
    name { "Project Runway" }
    due_date { Date.parse("2014-01-12") }
  end
end

FactoryBot.define do
  factory :big_project, class: Project do
    name { "Big Project" }
  end
end

FactoryBot.define do
  factory :task do
    title { "To Something" }
    size { 3 }
    project
  end
end

FactoryBot.define do
  factory :email do |n|
    "user_#{n}@test.com"
  end
end

FactoryBot.define do
  factory :user do
    name { "Fred Flintstone" }
    email
  end
end
