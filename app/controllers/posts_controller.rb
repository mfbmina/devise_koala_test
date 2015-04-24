class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    @graph = Koala::Facebook::API.new(current_user.token)
    @graph.put_connections("me", "feed", :message => params[:message])
    respond_to do |format|
      format.html { redirect_to(new_post_url) }
    end
  end
end