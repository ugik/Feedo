class PostsController < ApplicationController
  respond_to :html, :json

  def index
    if params[:delay] != nil
      # %meta{:content => params[:delay], "http-equiv" => "REFRESH"}/
    end

    if params[:font_name] != nil
      # @font_name = params[:font_name]
    else
      # @font_name = 'ubuntu' # default font
    end

    if params[:random_image] != nil
      @post = Post.random_image
    end

    if params[:random] != nil
      @post = Post.random
    end
    @post = Post.first(:order => "created_at DESC")
    @post
  end

  def show
    @post = Post.random
    render :partial => "post"
  end
end
