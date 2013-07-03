class PostsController < ApplicationController

  def index
  	@name = "Pati Silva"
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(params[:post])
  	if @post.save
  		redirect_to @post
  	else
  		render action: 'new'
  	end
  end	

  def edit
  	@post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])

  	respond_to do |format|
  		if @post.update_attributes(params[:post])
  			format.html { redirect_to post_path(@post, notice: 'Post was successfully updated!')}
  		else 
  			format.html {render action: 'edit', notice: 'Error!' 'Post was not updated'}
  		end
  	end
	end

  # def delete
  # 	@post = Post.find(params[:id])
  # 	render action: 'delete'
  # end
end

