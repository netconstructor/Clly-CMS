require 'test_helper'

module Cllycms
  class ContentControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end
  
  end
end
