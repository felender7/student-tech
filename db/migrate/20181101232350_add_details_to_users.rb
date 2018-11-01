class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :date_of_birth, :string
    add_column :users, :nationality, :string
    add_column :users, :place_of_birth, :string
    add_column :users, :gender, :string
    add_column :users, :id_number, :string
    add_column :users, :civil_status, :string
    add_column :users, :home_address, :string
    add_column :users, :school, :string
    add_column :users, :number_of_student, :string
    add_column :users, :course, :string
    add_column :users, :year, :string
    add_column :users, :alternative_email, :string
  end
end
