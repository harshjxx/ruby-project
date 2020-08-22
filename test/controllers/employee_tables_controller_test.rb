require 'test_helper'

class EmployeeTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_table = employee_tables(:one)
  end

  test "should get index" do
    get employee_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_table_url
    assert_response :success
  end

  test "should create employee_table" do
    assert_difference('EmployeeTable.count') do
      post employee_tables_url, params: { employee_table: { address: @employee_table.address, email: @employee_table.email, name: @employee_table.name } }
    end

    assert_redirected_to employee_table_url(EmployeeTable.last)
  end

  test "should show employee_table" do
    get employee_table_url(@employee_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_table_url(@employee_table)
    assert_response :success
  end

  test "should update employee_table" do
    patch employee_table_url(@employee_table), params: { employee_table: { address: @employee_table.address, email: @employee_table.email, name: @employee_table.name } }
    assert_redirected_to employee_table_url(@employee_table)
  end

  test "should destroy employee_table" do
    assert_difference('EmployeeTable.count', -1) do
      delete employee_table_url(@employee_table)
    end

    assert_redirected_to employee_tables_url
  end
end
