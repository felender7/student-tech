class AddBirthDateDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :start_year, :string
    add_column :users, :end_year, :string
  end
end
