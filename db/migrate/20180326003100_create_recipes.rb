class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.references :accessory
      t.text :flow
      t.timestamps
    end
  end
end
