class BtfMovementController < ApplicationController

def index
# Authenticate via OAuth
client = Tumblr::Client.new({
  :consumer_key => ENV['TUMBLR_CONSUMER_KEY'],
  :consumer_secret => ENV['TUMBLR_CONSUMER_SECRET'],
  :oauth_token => ENV['TUMBLR_OAUTH_TOKEN'],
  :oauth_token_secret => ENV['TUMBLR_OAUTH_SECRET']
})

# Make the request
@posts = client.posts 'btf-movement.tumblr.com', :type => 'text', :id => 78394158279, :filter => 'html'
end

end
