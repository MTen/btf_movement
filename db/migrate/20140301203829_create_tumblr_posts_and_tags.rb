class CreateTumblrPostsAndTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
    	t.string :tag
    end

    create_table :tumblr_posts_tags do |t|
    	t.belongs_to :tags
    	t.belongs_to :tumblr_posts
    end

  end
end
