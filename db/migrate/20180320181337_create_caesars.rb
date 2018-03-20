class CreateCaesars < ActiveRecord::Migration[5.1]
  def change
    create_table :caesars do |t|

      t.timestamps
    end
  end
end
