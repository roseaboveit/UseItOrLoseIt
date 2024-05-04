class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :servings
      t.integer :claimed_minutes_prep
      t.integer :claimed_minutes_cook
      t.integer :claimed_minutes_wait
      t.integer :tested_minutes_prep
      t.integer :tested_minutes_cook
      t.integer :tested_minutes_wait
      t.integer :spoons
      t.text :description
      t.timestamps
    end
  end
end
