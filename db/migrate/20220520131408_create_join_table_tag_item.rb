class CreateJoinTableTagItem < ActiveRecord::Migration[7.0]
  def change
    create_join_table :Tags, :Items do |t|
       t.index [:tag_id, :item_id]
       t.index [:item_id, :tag_id]
    end
  end
end
