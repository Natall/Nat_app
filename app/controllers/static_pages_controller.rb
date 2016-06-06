class StaticPagesController < ApplicationController

  def home
    if signed_in?
      @phrase  = current_user.phrases.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
    @phrases = Phrase.all
  end


  def welcome
  end

  def index
  end
end
