require 'test_helper'

class PropertiesControllerTest < ActionController::TestCase
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post :create, property: { apartement_no: @property.apartement_no, area: @property.area, building_no: @property.building_no, city: @property.city, description: @property.description, famous_site: @property.famous_site, price_from: @property.price_from, price_to: @property.price_to, street: @property.street, surface_area: @property.surface_area }
    end

    assert_redirected_to property_path(assigns(:property))
  end

  test "should show property" do
    get :show, id: @property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property
    assert_response :success
  end

  test "should update property" do
    patch :update, id: @property, property: { apartement_no: @property.apartement_no, area: @property.area, building_no: @property.building_no, city: @property.city, description: @property.description, famous_site: @property.famous_site, price_from: @property.price_from, price_to: @property.price_to, street: @property.street, surface_area: @property.surface_area }
    assert_redirected_to property_path(assigns(:property))
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete :destroy, id: @property
    end

    assert_redirected_to properties_path
  end
end
