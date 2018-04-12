require 'test_helper'

class TvDbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tv_db = tv_dbs(:one)
  end

  test "should get index" do
    get tv_dbs_url
    assert_response :success
  end

  test "should get new" do
    get new_tv_db_url
    assert_response :success
  end

  test "should create tv_db" do
    assert_difference('TvDb.count') do
      post tv_dbs_url, params: { tv_db: { desc: @tv_db.desc, name: @tv_db.name, number_of_episodes: @tv_db.number_of_episodes, up_to_date: @tv_db.up_to_date } }
    end

    assert_redirected_to tv_db_url(TvDb.last)
  end

  test "should show tv_db" do
    get tv_db_url(@tv_db)
    assert_response :success
  end

  test "should get edit" do
    get edit_tv_db_url(@tv_db)
    assert_response :success
  end

  test "should update tv_db" do
    patch tv_db_url(@tv_db), params: { tv_db: { desc: @tv_db.desc, name: @tv_db.name, number_of_episodes: @tv_db.number_of_episodes, up_to_date: @tv_db.up_to_date } }
    assert_redirected_to tv_db_url(@tv_db)
  end

  test "should destroy tv_db" do
    assert_difference('TvDb.count', -1) do
      delete tv_db_url(@tv_db)
    end

    assert_redirected_to tv_dbs_url
  end
end
