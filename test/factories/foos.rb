FactoryGirl.define do
  factory :foo do
    sequence(:name) { |n| "Name#{n}" }

    factory :foo_with_foo_dependants do
      transient { foo_dependants_count 1 }
      after(:create) do |foo, evaluator|
        create_list(:foo_dependant, evaluator.foo_dependants_count, foo: foo)
      end
    end
  end
end
