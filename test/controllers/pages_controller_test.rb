require_relative "../test_helper"

describe PagesController do

  describe 'GET index' do
    before { get :index }

    it 'must respond with success' do
      assert_response :success
    end

    it 'must assign @title' do
      assert(assigns(:title) == 'Ember This', "Title is nil or not equal to #{'Ember This'}")
    end
  end

end
