require 'test_helper'

class CategoryMapsControllerTest < ActionController::TestCase
  setup do
    @category_map = category_maps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_maps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_map" do
    assert_difference('CategoryMap.count') do
      post :create, category_map: { User_id: @category_map.User_id, category: @category_map.category }
    end

    assert_redirected_to category_map_path(assigns(:category_map))
  end

  test "should show category_map" do
    get :show, id: @category_map
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_map
    assert_response :success
  end

  test "should update category_map" do
    patch :update, id: @category_map, category_map: { User_id: @category_map.User_id, category: @category_map.category }
    assert_redirected_to category_map_path(assigns(:category_map))
  end

  test "should destroy category_map" do
    assert_difference('CategoryMap.count', -1) do
      delete :destroy, id: @category_map
    end

    assert_redirected_to category_maps_path
  end
end
