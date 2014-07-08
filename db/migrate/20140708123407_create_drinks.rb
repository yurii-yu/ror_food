class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.decimal :price
      t.string :memo
      t.string :image

      t.timestamps
    end
  end
end
