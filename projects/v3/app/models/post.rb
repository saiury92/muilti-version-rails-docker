class Post

  include DataMapper::Resource

  property :id, Serial
  property :title, String, :required => true, :length => 50
  property :content, Text, :required => true, :length => 1024

  has n, :comments
end
