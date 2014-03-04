class BtfMovementController < ApplicationController

	def index
		@post = TumblrPost.homepage
	end

	def medical_insurance
		@post = TumblrPost.medical_insurance	
	end

	def judicial_system
		@post = TumblrPost.judicial_system
	end

	def long_term_recovery
		@post = TumblrPost.long_term_recovery
	end
end
