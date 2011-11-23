class PostsController < ApplicationController
  def show
	@post = Post.first(:order => "created_at DESC")
  end

end
