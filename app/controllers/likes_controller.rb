class LikesController < ApplicationController
  protect_from_forgery :except => [:create]


  # like model

  def create
   @comment = params[:type].capitalize.classify.constantize.find(params[:id]).likes.create(value: params[:value], user: current_user)
    render json: @comment
  end



end

