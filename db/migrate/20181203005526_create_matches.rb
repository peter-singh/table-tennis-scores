class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :user_1
      t.integer :user_2
      t.integer :user_1_score
      t.integer :user_2_score
      t.datetime :time

      t.timestamps
    end
  end
end
