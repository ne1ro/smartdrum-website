#encoding: utf-8
class NewsController < ApplicationController
  def index
    @title = 'Новости'
    @news = News.order("created_at DESC").page(params[:page]).per(5)
  end

  def show
    @news = News.find(params[:id])
    @title = @news.header
  end
end
