class CreateTumblrPosts < ActiveRecord::Migration
  def change
    create_table :tumblr_posts do |t|

      t.timestamps
    end
  end
end
