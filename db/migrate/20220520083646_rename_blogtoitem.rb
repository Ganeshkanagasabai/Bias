class RenameBlogtoitem < ActiveRecord::Migration[7.0]
  def change
    rename_table :blogs, :items

  end
end
