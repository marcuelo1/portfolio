class AddEmailDisplayToAdmins < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :display_email, :string
  end
end
