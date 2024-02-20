class CreateUseroles < ActiveRecord::Migration[7.1]
  def change
    create_table :useroles do |t|
      t.string :user
      t.string :role

      t.timestamps
    end
  end
end
