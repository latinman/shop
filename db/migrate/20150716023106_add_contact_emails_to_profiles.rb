class AddContactEmailsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :contact_email, :string
  end
end
