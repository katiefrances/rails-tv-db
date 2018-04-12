require "application_system_test_case"

class TvDbsTest < ApplicationSystemTestCase
  setup do
    @tv_db = tv_dbs(:one)
  end

  test "visiting the index" do
    visit tv_dbs_url
    assert_selector "h1", text: "Tv Dbs"
  end

  test "creating a Tv db" do
    visit tv_dbs_url
    click_on "New Tv Db"

    fill_in "Desc", with: @tv_db.desc
    fill_in "Name", with: @tv_db.name
    fill_in "Number Of Episodes", with: @tv_db.number_of_episodes
    fill_in "Up To Date", with: @tv_db.up_to_date
    click_on "Create Tv db"

    assert_text "Tv db was successfully created"
    click_on "Back"
  end

  test "updating a Tv db" do
    visit tv_dbs_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @tv_db.desc
    fill_in "Name", with: @tv_db.name
    fill_in "Number Of Episodes", with: @tv_db.number_of_episodes
    fill_in "Up To Date", with: @tv_db.up_to_date
    click_on "Update Tv db"

    assert_text "Tv db was successfully updated"
    click_on "Back"
  end

  test "destroying a Tv db" do
    visit tv_dbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tv db was successfully destroyed"
  end
end
