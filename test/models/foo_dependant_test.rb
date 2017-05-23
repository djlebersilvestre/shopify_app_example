require 'test_helper'

class FooDependantTest < ActiveSupport::TestCase
  test 'initializes all atributes' do
    foo_dependant = create(:foo_dependant)

    assert_not_nil foo_dependant.id
    assert_not_nil foo_dependant.foo
    assert_not_nil foo_dependant.category
    assert_not_nil foo_dependant.value
  end

  test 'validates required fields' do
    foo_dependant = FooDependant.new

    refute foo_dependant.valid?
    msgs = foo_dependant.errors.full_messages
    assert_includes msgs, 'Foo must exist'
    assert_includes msgs, "Category can't be blank"
    assert_includes msgs, "Value can't be blank"

    foo_dependant.foo = create(:foo)
    foo_dependant.category = 'A category'
    foo_dependant.value = 1.12
    assert foo_dependant.valid?
  end

  test 'validates unique foo with category' do
    foo_dependant1 = create(:foo_dependant)
    foo_dependant2 = build(
      :foo_dependant,
      foo: foo_dependant1.foo,
      category: foo_dependant1.category,
      value: 123.45
    )

    refute foo_dependant2.valid?
    msgs = foo_dependant2.errors.full_messages
    assert_includes msgs, "Foo can't exist more than once with same category"

    foo_dependant2.category = 'Another category'
    assert foo_dependant2.valid?
  end

  test 'validates value positive and decimal points' do
    foo_dependant = build(:foo_dependant)
    foo_dependant.value = 0

    refute foo_dependant.valid?
    msgs = foo_dependant.errors.full_messages
    assert_includes msgs, 'Value must be greater than or equal to 0.01'

    foo_dependant.value = 0.001
    refute foo_dependant.valid?
    assert_includes msgs, 'Value must be greater than or equal to 0.01'

    foo_dependant.value = 0.01
    assert foo_dependant.valid?
  end
end
