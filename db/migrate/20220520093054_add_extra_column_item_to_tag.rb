class AddExtraColumnItemToTag < ActiveRecord::Migration[7.0]
  def change
    add_reference :tags, :item, null: false, foreign_key: true
  end
end
