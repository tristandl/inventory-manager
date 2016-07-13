class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :sku
      t.string :title
      t.string :artist
      t.string :format

      t.timestamps null: false
    end
  end
end
