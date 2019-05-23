class CreateStreets < ActiveRecord::Migration[5.2]
  def change
    create_table :streets do |t|
      t.string :name

      t.references :city

      t.timestamps
    end
  end
end
