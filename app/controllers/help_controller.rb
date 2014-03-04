class HelpController < ApplicationController

	def calendar
	end

	def donate
		@post = TumblrPost.donate 
	end

	def volunteer
		@post = TumblrPost.volunteer 
	end

end