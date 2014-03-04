class AboutUsController < ApplicationController

	def founders_story 
		@post = TumblrPost.founders_story
	end

	def contact
		@post = TumblrPost.contact
	end
end