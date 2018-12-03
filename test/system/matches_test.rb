require "application_system_test_case"

class MatchesTest < ApplicationSystemTestCase
  setup do
    @match = matches(:one)
  end

  test "visiting the index" do
    visit matches_url
    assert_selector "h1", text: "Matches"
  end

  test "creating a Match" do
    visit matches_url
    click_on "New Match"

    fill_in "Time", with: @match.time
    fill_in "User 1", with: @match.user_1
    fill_in "User 1 Score", with: @match.user_1_score
    fill_in "User 2", with: @match.user_2
    fill_in "User 2 Score", with: @match.user_2_score
    click_on "Create Match"

    assert_text "Match was successfully created"
    click_on "Back"
  end

  test "updating a Match" do
    visit matches_url
    click_on "Edit", match: :first

    fill_in "Time", with: @match.time
    fill_in "User 1", with: @match.user_1
    fill_in "User 1 Score", with: @match.user_1_score
    fill_in "User 2", with: @match.user_2
    fill_in "User 2 Score", with: @match.user_2_score
    click_on "Update Match"

    assert_text "Match was successfully updated"
    click_on "Back"
  end

  test "destroying a Match" do
    visit matches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Match was successfully destroyed"
  end
end
