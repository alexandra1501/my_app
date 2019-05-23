class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :rating
      t.text :content

      t.references :hotel, :user

      t.timestamps
    end
  end
end
