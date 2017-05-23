require 'test_helper'

class FooTest < ActiveSupport::TestCase
  test 'initializes all atributes' do
    foo = create(:foo)

    assert_not_nil foo.id
    assert_not_nil foo.name
    assert_equal 0, foo.foo_dependants.size
  end

  test 'validates required fields' do
    foo = Foo.new

    refute foo.valid?
    msgs = foo.errors.full_messages
    assert_includes msgs, "Name can't be blank"

    foo.name = 'Name'
    assert foo.valid?
  end

  test 'validates unique name' do
    foo1 = create(:foo)
    foo2 = build(:foo, name: foo1.name)

    refute foo2.valid?
    msgs = foo2.errors.full_messages
    assert_includes msgs, 'Name has already been taken'

    foo2.name = 'Another name'
    assert foo2.valid?
  end
end
