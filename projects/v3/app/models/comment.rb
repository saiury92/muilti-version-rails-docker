class Comment

  include DataMapper::Resource

  property :id, Serial
  property :comment, Text, :required => true, :length => 512
  property :post_id, Integer
  property :created_at, DateTime

   belongs_to :post

end
