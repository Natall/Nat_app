class ExamplesController < ApplicationController

  def index
    @examples = Example.all
  end

  def new
  @example = Example.new

  end

  def show
  @example = Example.find(params[:id])

  end

  def create
    @example = Example.new(params[:example])
    @example.save
  end

end
