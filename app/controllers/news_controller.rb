#encoding: utf-8
class NewsController < ApplicationController
  def index
    @title = 'Новости'
    @news = News.order("created_at DESC").page(params[:page]).per(5)
    @newsrss = News.order("created_at DESC").limit(20)

    respond_to do |format|
      format.html
      format.atom { render :layout => false }
    end
  end

  def show
    @news = News.find(params[:id])
    @title = @news.header
    @comments = @news.news_comment.page(params[:page]).per(10)
    if user_signed_in?
      @comment = NewsComment.new
      @comment.news_id = @news.id
    end
  end
end
