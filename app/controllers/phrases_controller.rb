class PhrasesController < ApplicationController


  def new
    @phrase = Phrase.new

  end

  def create
    @phrase = Phrase.new(phrase_params)
    @phrase.user = current_user
    if @phrase.save
        redirect_to user_path current_user
      else
        @feed_items = []
        render 'static_pages/home'
      end
  end

  def show
    @phrase = Phrase.find(params[:id])
  end

  def index
    @phrases = Phrase.all
  end

  def destroy
    @phrase = Phrase.find(params[:id])
    @phrase.destroy
    redirect_to request.referer
  end

  private

  def phrase_params
    params.require(:phrase).permit(:content, :category_id)
  end
end
