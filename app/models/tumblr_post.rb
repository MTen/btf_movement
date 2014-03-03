class TumblrPost < ActiveRecord::Base
has_and_belongs_to_many :tags	
	validates :title, presence: true
	validates :body, presence: true
	validates :tumblr_post_id, presence: true, uniqueness: true

	def self.check_tumblr
	#Authenticate Client
		client = Tumblr::Client.new :consumer_key => ENV['TUMBLR_CONSUMER_KEY']
	#Make the request
		client.posts 'zerogrifter.tumblr.com', :type => 'text', :limit => 5, :filter => 'text'
	end

end
