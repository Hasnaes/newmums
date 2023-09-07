class NewsController < ApplicationController

  def index
    @news = News.all

    if params[:query].present?
      @news = @news.where(theme: params[:query])
    end


    if params[:where].present? && params[:where] != "all"
      @news = @news.where(theme: params[:where])
    end

  end

  def show
  end
end
