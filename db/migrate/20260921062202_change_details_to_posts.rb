class ChangeDetailsToPosts < ActiveRecord::Migration[8.1]
  def change
    remove_column :posts, :img_url, :string 
    remove_column :posts, :content, :string
    add_column :posts, :url, :string
  end
end
