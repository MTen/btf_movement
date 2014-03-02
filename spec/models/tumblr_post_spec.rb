require 'spec_helper'

describe TumblrPost do
	before do
		@post = TumblrPost.new(
			title: 'Stuff',
			body: 'A few words here to make it look legit',
			tumblr_post_id: 123)
	end

	it 'is valid with a title, body, and id' do
			expect(@post).to(be_valid)
	end

	it 'is invalid without a title' do
		expect(TumblrPost.new(title: nil)).to(have(1).errors_on(:title))
	end

	it 'is invalid without a body' do
		expect(TumblrPost.new(body: nil)).to(have(1).errors_on(:body))
	end
	
	it 'is invalid without a id' do
		expect(TumblrPost.new(tumblr_post_id: nil)).to(have(1)
		.errors_on(:tumblr_post_id))
	end
	
	it 'is invalid with a duplicate id' do
		TumblrPost.create(
			title: 'This is a title', body: 'This is a body',
			tumblr_post_id: 123)
		expect(@post).to have(1).errors_on(:tumblr_post_id)
	end

	it 'returns a blog\'s body as a string' do
		post = TumblrPost.new(
			title: 'Title', 
			body: 'This is another body of a different post', 
			tumblr_post_id: 123)
			expect(post.title).to eq 'Title'
	end


	it 'returns a post that has a matching tag' do
		 post = TumblrPost.create(
		 	title: 'Title',
		 	body: 'some body stuff',
		 	tumblr_post_id: 123,
		 	tags: "homepage")
		 expect(post.tags).to include "homepage"
	end
		
	it 'ignores posts that do not have a matching tag'

	# Not ready for this test - need to set up tag association.
	it 'returns a sorted array of results that match the tag'
		# homepage = TumblrPost.create(
		# 	title: 'Title',
		# 	body: 'some body stuff',
		# 	tumblr_post_id: 12341234,
		# 	tags: ["homepage"])
		# expect(TumblrPost.by_tag("homepage")).to eq [homepage]

end

 post = TumblrPost.new(title: 'Title', body: 'some body stuff', tumblr_post_id: 123)