class BtfMovementController < ApplicationController

	def index
		@post = TumblrPost.homepage
	end

end
