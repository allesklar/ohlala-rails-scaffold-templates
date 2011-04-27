require 'test_helper'

class <%= controller_class_name %>ControllerTest < ActionController::TestCase

  setup do
    @<%= singular_table_name %> = Factory.create :<%= singular_table_name %>
    @current_user = Factory.create :user, :id => 1, :email => 'test@example.com', :password => 'password', :admin => true
    session[:user_id] = 1
  end

  test "should get index" do
    a = Factory.create :admin_menu, :id => 1 # using default admin menu. change this value later
    get :index, {:locale => 'en'}
    assert_response :success
    assert_not_nil assigns(:<%= table_name %>)
  end

  test "should get new" do
    a = Factory.create :admin_menu, :id => 1 # using default admin menu. change this value later
    get :new, {:locale => 'en'}
    assert_response :success
  end

  test "should create <%= singular_table_name %>" do
    assert_difference('<%= class_name %>.count') do
      post :create, {:<%= singular_table_name %> => @<%= singular_table_name %>.attributes, :locale => 'en'}
    end
    assert_redirected_to <%= singular_table_name %>_path(assigns(:<%= singular_table_name %>))
  end

  test "should show <%= singular_table_name %>" do
    get :show, {:id => @<%= singular_table_name %>.to_param, :locale => 'en'}
    assert_response :success
  end

  test "should get edit" do
    a = Factory.create :admin_menu, :id => 1 # using default admin menu. change this value later
    get :edit, {:id => @<%= singular_table_name %>.to_param, :locale => 'en'}
    assert_response :success
  end

  test "should update <%= singular_table_name %>" do
    put :update, {:id => @<%= singular_table_name %>.to_param, :<%= singular_table_name %> => @<%= singular_table_name %>.attributes, :locale => 'en'}
    assert_redirected_to <%= singular_table_name %>_path(assigns(:<%= singular_table_name %>))
  end

  test "should destroy <%= singular_table_name %>" do
    assert_difference('<%= class_name %>.count', -1) do
      delete :destroy, {:id => @<%= singular_table_name %>.to_param, :locale => 'en'}
    end
    assert_redirected_to <%= index_helper %>_path
  end
  
end
