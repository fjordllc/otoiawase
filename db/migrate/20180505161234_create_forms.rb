class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.string :email, null: false
      t.string :site, null: false, unique: true
      t.string :token, unique: true
      t.datetime :confirmed_at

      t.timestamps
    end
  end
end
