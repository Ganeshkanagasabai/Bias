class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :name
      t.text :description
      t.string :image
      t.text :example

      t.timestamps
    end
  end
end
