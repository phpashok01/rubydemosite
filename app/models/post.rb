class Post < ActiveRecord::Base
#attr_accessible :content, :published_at, :subject
 
has_many :comments
end
