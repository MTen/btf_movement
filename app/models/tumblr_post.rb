class TumblrPost < ActiveRecord::Base
has_and_belongs_to_many :tags	
	validates :title, presence: true
	validates :body, presence: true
	validates :tumblr_post_id, presence: true, uniqueness: true

private
### Api call used for "low security" activities. 
	def self.api_call
	#Authenticate Client
		Tumblr::Client.new({:consumer_key => ENV['TUMBLR_CONSUMER_KEY']})
	end

#api_call.posts returns an array of posts that can be iterated through and 
### then return the following keys.
### "blog_name", "id", "post_url", "slug", "type", "date", "timestamp", 
### "state", "format", "reblog_key", "tags", "short_url", "highlighted", 
### "note_count", "title", "body"
	
	def self.blog
		this = api_call.posts 'btf-movement.tumblr.com', :type => 'text', :limit => 5, :filter => 'text'
		this["posts"]
	end

### OAuth call for "high security" calls
	def self.oauth_call
		Tumblr::Client.new({
		  :consumer_key => ENV['TUMBLR_CONSUMER_KEY'],
		  :consumer_secret => ENV['TUMBLR_CONSUMER_SECRET'],
		  :oauth_token => ENV['TUMBLR_OAUTH_TOKEN'],
		  :oauth_token_secret => ENV['TUMBLR_OAUTH_SECRET']
		})
	end

### Using OAuth call to get the private homepage post.

# oauth_call.posts returns a hash object with the below keys. 
### "blog_name", "id", "post_url", "slug", "type", "date","timestamp", 
### "state", "format", "reblog_key", "tags", "short_url", "followed", 
### "highlighted", "liked", "note_count", "title", "body", "can_reply"

	def self.homepage
		homepage = oauth_call.posts 'btf-movement.tumblr.com', :type => 'text', :id => 78394158279, :filter => 'html'
		homepage["posts"][0]
	end

### Using OAuth call to get private posts.
#Get Informed
	def self.signs_and_symptoms
		signs_and_symptoms = oauth_call.posts 'btf-movement.tumblr.com', :type => 'text', :id => 78395809305
		signs_and_symptoms["posts"][0]
	end

	def self.prevention_in_your_area
		prevention_in_your_area = oauth_call.posts 'btf-movement.tumblr.com', :type => 'text', :id => 78422198994
		prevention_in_your_area["posts"][0]
	end

	def self.resources
		resources = oauth_call.posts 'btf-movement.tumblr.com', :type => 'text', :id => 78422198994
		resources["posts"][0]
	end

	def self.statistics
		statistics = oauth_call.posts 'btf-movement.tumblr.com', :type => 'text', :id => 78424141078
		statistics["posts"][0]
	end

#The BTF Movement
	def self.judicial_system
		judicial = oauth_call.posts 'btf-movement.tumblr.com', :type => 'text', :id => 78466500774
		judicial["posts"][0]
	end

	def self.medical_insurance
		medical = oauth_call.posts 'btf-movement.tumblr.com', :type => 'text', :id => 78466727685
		medical["posts"][0]
	end

	def self.long_term_recovery
		recovery = oauth_call.posts 'btf-movement.tumblr.com', :type => 'text', :id => 78468391088
		recovery["posts"][0]
	end

#Help Fight Addiction
	def self.calendar

	end

	def self.volunteer
		volunteer = oauth_call.posts 'btf-movement.tumblr.com', :type => 'text', :id => 78470872081
		volunteer["posts"][0]
	end

	def self.donate
		donate = oauth_call.posts 'btf-movement.tumblr.com', :type => 'text', :id => 78471192724
		donate["posts"][0]
	end

#About Us
	def self.founders_story
		founders_story = oauth_call.posts 'btf-movement.tumblr.com', :type => 'text', :id => 78502562482
		founders_story["posts"][0]
	end

	def self.contact
		contact = oauth_call.posts 'btf-movement.tumblr.com', :type => 'text', :id => 78502699891
		contact["posts"][0]
	end

end
