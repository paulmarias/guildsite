class CreateBases < ActiveRecord::Migration[7.1]
  def change
    create_table :bases do |t|

      t.timestamps
    end
  end
end
