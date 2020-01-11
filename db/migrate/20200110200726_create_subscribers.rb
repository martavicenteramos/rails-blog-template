class CreateSubscribers < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribers do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.boolean :active

      t.timestamps
    end
  end
end
