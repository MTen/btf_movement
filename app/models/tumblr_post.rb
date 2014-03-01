class TumblrPost < ActiveRecord::Base
has_and_belongs_to_many :tags

	validates :title, presence: true
	validates :body, presence: true
	validates :tumblr_post_id, presence: true, uniqueness: true


end
