class PostsController < ApplicationController
  def index
  	@name = "Pati Silva"
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  end
end
