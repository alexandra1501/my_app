class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :title
      t.string :breakfast
      t.text :room
      t.string :price
      t.string :image

      t.references :street

      t.timestamps
    end
  end
end
