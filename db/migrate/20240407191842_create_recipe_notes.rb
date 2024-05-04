class CreateRecipeNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_notes do |t|
      t.text :reflection
      t.integer :recipe_id, foreign_key: true
      t.timestamps
    end
  end
end
