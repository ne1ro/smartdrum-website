#encoding: utf-8

class CommentsBlogController < ApplicationController
  def new
   
    @page_title = "Добавить комментарий"
  end

  def create
     @page_title = "Добавить комментарий"
  end
end
