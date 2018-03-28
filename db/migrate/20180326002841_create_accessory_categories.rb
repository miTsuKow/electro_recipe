class CreateAccessoryCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :accessory_categories do |t|
      t.references :accessory
      t.references :category_id
    end
  end
end
