class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.text :address
      t.string :phone
      t.integer :sex
      t.string :mail_address
      t.boolean :email_permission

      t.timestamps
    end
  end
end
