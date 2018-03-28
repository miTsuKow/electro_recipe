class CreateAccessories < ActiveRecord::Migration[5.1]
  def change
    create_table :accessories do |t|
      t.references :user
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end
