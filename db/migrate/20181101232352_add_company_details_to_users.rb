class AddCompanyDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :company_name, :string
    add_column :users, :type_of_company, :string
    add_column :users, :type_of_registration, :string
    add_column :users, :comercial_name_of_the_business, :string
    add_column :users, :company_address, :string
    add_column :users, :vat_number, :string
    add_column :users, :company_contact, :string
  end
end
