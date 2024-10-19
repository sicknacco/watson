class CreatePrint < ActiveRecord::Migration[7.1]
  def change
    create_table :paintings do |t|
      t.string :title
      t.float :price
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
