require 'test_helper'

class RebootsControllerTest < ActionController::TestCase
  setup do
    @reboot = reboots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reboots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reboot" do
    assert_difference('Reboot.count') do
      post :create, reboot: { description: @reboot.description, title: @reboot.title, type: @reboot.type }
    end

    assert_redirected_to reboot_path(assigns(:reboot))
  end

  test "should show reboot" do
    get :show, id: @reboot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reboot
    assert_response :success
  end

  test "should update reboot" do
    patch :update, id: @reboot, reboot: { description: @reboot.description, title: @reboot.title, type: @reboot.type }
    assert_redirected_to reboot_path(assigns(:reboot))
  end

  test "should destroy reboot" do
    assert_difference('Reboot.count', -1) do
      delete :destroy, id: @reboot
    end

    assert_redirected_to reboots_path
  end
end
