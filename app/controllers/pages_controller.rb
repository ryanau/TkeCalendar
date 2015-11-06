class PagesController < ApplicationController
  def index
    @infos = Info.all
    render 'index'
  end
end
