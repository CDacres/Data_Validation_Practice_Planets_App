class CreatePlanets < ActiveRecord::Migration[5.1]
  def change
    create_table :planets do |t|
      t.string :name
      t.integer :population
      t.string :flag_url
      t.string :lang
      t.string :president

      t.timestamps
    end
  end
end
