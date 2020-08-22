class CreateEmployeeTables < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_tables do |t|
      t.string :name
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
