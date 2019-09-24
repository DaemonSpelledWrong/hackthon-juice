class CreatePowders < ActiveRecord::Migration[6.0]
  def change
    create_table :powders do |t|
      t.string :name
      t.string :brand
      t.string :flavor
      t.string :productImage
      t.string :nutritionImage
      t.float :price

      t.timestamps
    end
  end
end
