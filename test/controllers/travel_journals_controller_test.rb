require 'test_helper'

class TravelJournalsControllerTest < ActionController::TestCase
  setup do
    @travel_journal = travel_journals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travel_journals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travel_journal" do
    assert_difference('TravelJournal.count') do
      post :create, travel_journal: { description: @travel_journal.description, title: @travel_journal.title, user_id: @travel_journal.user_id }
    end

    assert_redirected_to travel_journal_path(assigns(:travel_journal))
  end

  test "should show travel_journal" do
    get :show, id: @travel_journal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travel_journal
    assert_response :success
  end

  test "should update travel_journal" do
    patch :update, id: @travel_journal, travel_journal: { description: @travel_journal.description, title: @travel_journal.title, user_id: @travel_journal.user_id }
    assert_redirected_to travel_journal_path(assigns(:travel_journal))
  end

  test "should destroy travel_journal" do
    assert_difference('TravelJournal.count', -1) do
      delete :destroy, id: @travel_journal
    end

    assert_redirected_to travel_journals_path
  end
end
