class AddColumnsToAdmins < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :about_me, :text
    add_column :admins, :skills, :string
    add_column :admins, :languages, :string
    add_column :admins, :mobile_number, :string
    add_column :admins, :address, :string
  end
end
