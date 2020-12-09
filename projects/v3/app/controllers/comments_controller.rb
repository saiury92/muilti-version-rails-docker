class CommentsController < ApplicationController
  def index
    post = Post.get params[:post_id]
    @comments = post.comments
    respond_to do |format|
      format.html 
      format.xml  { render :xml => @comments }
    end
  end

  def show
    post = Post.get params[:post_id]
    @comment = post.comments.get params[:id]
    respond_to do |format|
      format.html 
      format.xml  { render :xml => @comment }
    end
  end

  def new
    post = Post.get params[:post_id]
    @comment = post.comments.new
    respond_to do |format|
      format.html 
      format.xml  { render :xml => @comment }
    end
  end

  def edit
    post = Post.get params[:post_id]
    @comment = post.comments.get params[:id]
  end

  def create
    post = Post.get params[:post_id]
    @comment = post.comments.create params[:comment]
    respond_to do |format|
      if @comment.save 
        format.html { redirect_to(post_path(id: post.id)) }
        format.xml  { render :xml => @comment, :status => :created, :location => [@comment.post, @comment] }
      else
        format.html { render :action => "new"}
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    post = Post.get params[:post_id]
    @comment = post.comments.get params[:id]
    respond_to do |format|
      if @comment.update(params[:comment])
        format.html { redirect_to(post_path(id: post.id)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    post = Post.get params[:post_id]
    @comment = post.comments.get params[:id]
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to(post_path(id: post.id)) }
      format.xml  { head :ok }
    end
  end
end
