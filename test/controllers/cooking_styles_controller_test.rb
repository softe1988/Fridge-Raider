require 'test_helper'

class CookingStylesControllerTest < ActionController::TestCase
  setup do
    @cooking_style = cooking_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cooking_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cooking_style" do
    assert_difference('CookingStyle.count') do
      post :create, cooking_style: { cuisine_id: @cooking_style.cuisine_id, name: @cooking_style.name }
    end

    assert_redirected_to cooking_style_path(assigns(:cooking_style))
  end

  test "should show cooking_style" do
    get :show, id: @cooking_style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cooking_style
    assert_response :success
  end

  test "should update cooking_style" do
    patch :update, id: @cooking_style, cooking_style: { cuisine_id: @cooking_style.cuisine_id, name: @cooking_style.name }
    assert_redirected_to cooking_style_path(assigns(:cooking_style))
  end

  test "should destroy cooking_style" do
    assert_difference('CookingStyle.count', -1) do
      delete :destroy, id: @cooking_style
    end

    assert_redirected_to cooking_styles_path
  end
end
