class HomeController < ApplicationController
  def index
    @podcasts = Podcast.order("id DESC")
  end
end
