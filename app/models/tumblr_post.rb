class TumblrPost < ActiveRecord::Base
validates :title, presence: true
validates :body, presence: true
validates :tumblr_post_id, presence: true, uniqueness: true


end
