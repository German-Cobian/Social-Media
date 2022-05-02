class ApiController < ActionController::API
  include Response

  before_action :set_post, only: [:show_comments]

  def show_posts
    @posts = Post.all
    json_response(@posts)
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end