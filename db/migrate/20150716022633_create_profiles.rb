class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :user_id
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
