class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials do |t|
      t.references :accessory
      t.string :name
      t.string :quantity
      t.string :unit
      t.timestamps
    end
  end
end
