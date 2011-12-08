class PostsController < ApplicationController
  respond_to :html, :json

  def index
    # TODO - Reimplement these query-string-parameter controls
    #if params[:delay] != nil
    #  %meta{:content => params[:delay], "http-equiv" => "REFRESH"}/
    #end
    #
    #if params[:font_name] != nil
    #  @font_name = params[:font_name]
    #else
    #  @font_name = 'ubuntu' # default font
    #end
    #
    #if params[:random_image] != nil
    #  @post = Post.random_image
    #end
    #
    #if params[:random] != nil
    #  @post = Post.random
    #end
    get_post
  end

  def show
    get_post
    render :partial => "post"
  end

  def get_post
    @post = Post.where(:postable_type => "League").random
  end
end
