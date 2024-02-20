class CreateRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :roles do |t|
      t.string :title
      t.text :details
      t.integer :rank

      t.timestamps
    end
  end
end
