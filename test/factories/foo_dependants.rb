FactoryGirl.define do
  factory :foo_dependant do
    foo
    category 'A category'
    value 1.5
  end
end
