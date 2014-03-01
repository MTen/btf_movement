class Tag < ActiveRecord::Base
has_and_belongs_to_many :tumblr_posts

validates :tag, presence: true

end