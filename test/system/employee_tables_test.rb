require "application_system_test_case"

class EmployeeTablesTest < ApplicationSystemTestCase
  setup do
    @employee_table = employee_tables(:one)
  end

  test "visiting the index" do
    visit employee_tables_url
    assert_selector "h1", text: "Employee Tables"
  end

  test "creating a Employee table" do
    visit employee_tables_url
    click_on "New Employee Table"

    fill_in "Address", with: @employee_table.address
    fill_in "Email", with: @employee_table.email
    fill_in "Name", with: @employee_table.name
    click_on "Create Employee table"

    assert_text "Employee table was successfully created"
    click_on "Back"
  end

  test "updating a Employee table" do
    visit employee_tables_url
    click_on "Edit", match: :first

    fill_in "Address", with: @employee_table.address
    fill_in "Email", with: @employee_table.email
    fill_in "Name", with: @employee_table.name
    click_on "Update Employee table"

    assert_text "Employee table was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee table" do
    visit employee_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee table was successfully destroyed"
  end
end
