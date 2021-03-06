class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.references :done_recipe, null: false, foreign_key: true
      t.integer :star
      t.string :content

      t.timestamps
    end
  end
end
