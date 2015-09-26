require 'test_helper'

class TransactionsControllerTest < ActionController::TestCase
  setup do
    @transaction = transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transactions)
  end

  test "should create transaction" do
    assert_difference('Transaction.count') do
      post :create, transaction: { name: @transaction.name }
    end

    assert_response 201
  end

  test "should show transaction" do
    get :show, id: @transaction
    assert_response :success
  end

  test "should update transaction" do
    put :update, id: @transaction, transaction: { name: @transaction.name }
    assert_response 204
  end

  test "should destroy transaction" do
    assert_difference('Transaction.count', -1) do
      delete :destroy, id: @transaction
    end

    assert_response 204
  end
end
