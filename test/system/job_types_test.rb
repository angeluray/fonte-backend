require "application_system_test_case"

class JobTypesTest < ApplicationSystemTestCase
  setup do
    @job_type = job_types(:one)
  end

  test "visiting the index" do
    visit job_types_url
    assert_selector "h1", text: "Job types"
  end

  test "should create job type" do
    visit job_types_url
    click_on "New job type"

    fill_in "Name", with: @job_type.name
    click_on "Create Job type"

    assert_text "Job type was successfully created"
    click_on "Back"
  end

  test "should update Job type" do
    visit job_type_url(@job_type)
    click_on "Edit this job type", match: :first

    fill_in "Name", with: @job_type.name
    click_on "Update Job type"

    assert_text "Job type was successfully updated"
    click_on "Back"
  end

  test "should destroy Job type" do
    visit job_type_url(@job_type)
    click_on "Destroy this job type", match: :first

    assert_text "Job type was successfully destroyed"
  end
end
