class AddColumnsToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :Address, :string
    add_column :students, :postal_code, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
