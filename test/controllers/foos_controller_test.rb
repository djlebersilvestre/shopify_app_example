require 'test_helper'

class FoosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo = create(:foo)
  end

  test 'should get index' do
    get foos_url
    assert_response :success

    foos = parse_json_response
    foos.each { |o| assert_equal foo_json(@foo), o }
  end

  test 'should create foo' do
    @foo.name = 'Non unique name'
    assert_difference('Foo.count') do
      post foos_url, params: { foo: { name: @foo.name } }
    end

    assert_response :success
    assert_equal foo_json(Foo.last), parse_json_response
  end

  test 'should show foo' do
    get foo_url(@foo)
    assert_response :success
    assert_equal foo_json(@foo), parse_json_response
  end

  test 'should update foo' do
    @foo.name = 'another name'

    patch foo_url(@foo), params: { foo: { name: @foo.name } }
    assert_response :success

    updated_foo = Foo.find(@foo.id)
    @foo.updated_at = updated_foo.updated_at
    assert_equal foo_json(@foo), parse_json_response
  end

  test 'should destroy foo' do
    assert_difference('Foo.count', -1) do
      delete foo_url(@foo)
    end

    assert_response :success
    assert_equal foo_json(@foo), parse_json_response
  end
end
