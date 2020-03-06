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
