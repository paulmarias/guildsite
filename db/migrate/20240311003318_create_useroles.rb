class CreateUseroles < ActiveRecord::Migration[7.1]
  def change
    create_table :useroles do |t|
      t.integer :user
      t.integer :role

      t.timestamps
    end
  end
end
