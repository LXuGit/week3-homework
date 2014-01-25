require 'test_helper'

class DiceControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get roll" do
    get :roll
    assert_response :success
  end

  test "should get reroll" do
    get :reroll
    assert_response :success
  end

end
