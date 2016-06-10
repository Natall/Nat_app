class PhrasesController < ApplicationController


  def new
    @phrase = Phrase.new
    # @phrase.examples.build

  end

  def create
    @phrase = Phrase.new(phrase_params)
    @phrase.user = current_user
    if @phrase.save
      redirect_to user_path current_user
    # else
    #   @feed_items = []
    #   render 'static_pages/home'
    end

  end

  def update
    @phrase = Phrase.find(params[:id])
    @phrase.update_attributes(params[:phrase])
    redirect_to user_path current_user

  end


  def show
    @phrase = Phrase.find(params[:id]).order(created_at: :asc)

  end

  def index
    @phrases = Phrase.paginate(page: params[:page], :per_page => 10)

  end

  def destroy
    @phrase = Phrase.find(params[:id])
    @phrase.destroy
    redirect_to request.referer
  end


  private

  def phrase_params
    params.require(:phrase).permit(:content, :category_id, :example, :translation)
  end

  def edit
    @phrase = Phrase.find(params[:id])
  end
end
