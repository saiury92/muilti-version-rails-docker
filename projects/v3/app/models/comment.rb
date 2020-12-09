class Comment

  include DataMapper::Resource

  property :id, Serial
  property :comment, Text, :required => true, :length => 512
  # property :post_id, Integer
  timestamps :created_at, :updated_at

  belongs_to :post
  
  def self.order_desc
    all(:order => [:created_at.desc])
  end

end
