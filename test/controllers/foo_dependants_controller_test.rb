require 'test_helper'

class FooDependantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo_dependant = create(:foo_dependant)
  end

  test 'should get index' do
    get foo_foo_dependants_url(@foo_dependant.foo)
    assert_response :success

    foo_dependants = parse_json_response
    foo_dependants.each { |o| assert_equal foo_dependant_json(@foo_dependant), o }
  end

  test 'should create foo_dependant' do
    @foo_dependant.category = 'Non unique category'
    params = {
      foo_dependant: {
        foo_id: @foo_dependant.foo_id,
        category: @foo_dependant.category,
        value: @foo_dependant.value
      }
    }
    assert_difference('FooDependant.count') do
      post foo_foo_dependants_url(@foo_dependant.foo), params: params
    end

    assert_response :success
    assert_equal foo_dependant_json(FooDependant.last), parse_json_response
  end

  test 'should show foo_dependant' do
    get foo_dependant_url(@foo_dependant)
    assert_response :success
    assert_equal foo_dependant_json(@foo_dependant), parse_json_response
  end

  test 'should update foo_dependant' do
    @foo_dependant.category = 'Another category'
    @foo_dependant.value = 123.45

    params = {
      foo_dependant: {
        foo_id: @foo_dependant.foo_id,
        category: @foo_dependant.category,
        value: @foo_dependant.value
      }
    }
    patch foo_dependant_url(@foo_dependant), params: params
    assert_response :success

    updated_foo_dep = FooDependant.find(@foo_dependant.id)
    @foo_dependant.updated_at = updated_foo_dep.updated_at
    assert_equal foo_dependant_json(@foo_dependant), parse_json_response
  end

  test 'should destroy foo_dependant' do
    assert_difference('FooDependant.count', -1) do
      delete foo_dependant_url(@foo_dependant)
    end

    assert_response :success
    assert_equal foo_dependant_json(@foo_dependant), parse_json_response
  end
end
