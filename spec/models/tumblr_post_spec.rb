require 'spec_helper'

describe TumblrPost do
	it 'is valid with a title, body, and id' do
		post = TumblrPost.new(
			title: 'Stuff',
			body: 'A few words here to make it look legit',
			tumblr_post_id: 12341234)
			expect(post).to(be_valid)
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
		post = TumblrPost.new(
			title: 'This is another title', body: 'This is a different body',
			tumblr_post_id: 123)
		expect(post).to have(1).errors_on(:tumblr_post_id)
	end

	it 'returns a blog\'s body as a string' do
		post = TumblrPost.new(
			title: 'Title', 
			body: 'This is another body of a different post', 
			tumblr_post_id: 12341234)
			expect(post.title).to eq 'Title'
	end
end