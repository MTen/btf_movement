class AddColumnsToTumblrPost < ActiveRecord::Migration
  def change
	  add_column :tumblr_posts, :title, :string
	  add_column :tumblr_posts,	:body, :text
	  add_column :tumblr_posts, :post_id, :integer
  end
end
