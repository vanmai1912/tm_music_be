class CreatePemberAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :pember_admins do |t|
      t.string :name
      t.string :email
      t.date :last_sign_in

      t.timestamps
    end
  end
end
