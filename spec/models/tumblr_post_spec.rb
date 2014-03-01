require 'spec_helper'

describe TumblrPost do
	it 'is valid with a title, body, and id' do
		post = TumblrPost.new(
			title: 'Stuff',
			body: 'A few words here to make it look legit',
			post_id: 12341234)
			expect(post).to be_valid
	end
	it 'is invalid without a title' 
	it 'is invalid without a body'
	it 'is invalid without a id'
	it 'is invalid with a duplicate id'
	it 'returns a blog\'s body as a string'
end