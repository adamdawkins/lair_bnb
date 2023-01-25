require "application_system_test_case"

class ReviewsTest < ApplicationSystemTestCase
  setup do
    @review = reviews(:one)
  end

  test "visiting the index" do
    visit reviews_url
    assert_selector "h1", text: "Reviews"
  end

  test "should create review" do
    visit reviews_url
    click_on "New review"

    fill_in "Body", with: @review.body
    fill_in "Check in rating", with: @review.check_in_rating
    fill_in "Cleanliness rating", with: @review.cleanliness_rating
    fill_in "Host rating", with: @review.host_rating
    fill_in "Location rating", with: @review.location_rating
    fill_in "User", with: @review.user_id
    fill_in "Value rating", with: @review.value_rating
    click_on "Create Review"

    assert_text "Review was successfully created"
    click_on "Back"
  end

  test "should update Review" do
    visit review_url(@review)
    click_on "Edit this review", match: :first

    fill_in "Body", with: @review.body
    fill_in "Check in rating", with: @review.check_in_rating
    fill_in "Cleanliness rating", with: @review.cleanliness_rating
    fill_in "Host rating", with: @review.host_rating
    fill_in "Location rating", with: @review.location_rating
    fill_in "User", with: @review.user_id
    fill_in "Value rating", with: @review.value_rating
    click_on "Update Review"

    assert_text "Review was successfully updated"
    click_on "Back"
  end

  test "should destroy Review" do
    visit review_url(@review)
    click_on "Destroy this review", match: :first

    assert_text "Review was successfully destroyed"
  end
end
