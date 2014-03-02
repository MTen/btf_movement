class CreateTumblrPostsAndTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
    	t.string :tag
    end

    create_table :tags_tumblr_posts do |t|
    	t.belongs_to :tags
    	t.belongs_to :tumblr_posts
    end

  end
end
