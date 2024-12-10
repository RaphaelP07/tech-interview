class HomeController < ApplicationController
  def index
    @featured_posts = Post.for_homepage.active("p").featured("p")
    @active_posts = Post.for_homepage.active("p").not_featured("p")
  end
end
