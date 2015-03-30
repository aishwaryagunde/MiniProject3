require 'test_helper'

class OrganisersControllerTest < ActionController::TestCase
  setup do
    @organiser = organisers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organisers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organiser" do
    assert_difference('Organiser.count') do
      post :create, organiser: { event_title: @organiser.event_title, college: @organiser.college, name: @organiser.name, event_type: @organiser.event_type }
    end

    assert_redirected_to organiser_path(assigns(:organiser))
  end

  test "should show organiser" do
    get :show, id: @organiser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organiser
    assert_response :success
  end

  test "should update organiser" do
    patch :update, id: @organiser, organiser: { event_title: @organiser.event_title, college: @organiser.college, name: @organiser.name, event_type: @organiser.event_type }
    assert_redirected_to organiser_path(assigns(:organiser))
  end

  test "should destroy organiser" do
    assert_difference('Organiser.count', -1) do
      delete :destroy, id: @organiser
    end

    assert_redirected_to organisers_path
  end
end
