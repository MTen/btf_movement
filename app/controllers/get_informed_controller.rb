class GetInformedController < ApplicationController

def index
 redirect_to :signs_and_symptoms
end

	def signs_and_symptoms
		@post = TumblrPost.signs_and_symptoms
	end

	def prevention_in_your_area
		@post = TumblrPost.prevention_in_your_area 
	end

	def resources
		@post = TumblrPost.resources 
	end

	def statistics
		@post = TumblrPost.statistics 
	end


end