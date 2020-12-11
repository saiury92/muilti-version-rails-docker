require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!({title: 'test title 1', content: 'test content'}),
      Post.create!({title: 'test title 2', content: 'test content'})
    ])
  end

  it "renders a list of posts" do
    render
  end
end
