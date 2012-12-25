#encoding : utf-8
class NewsCommentsController < ApplicationController
before_filter :authenticate_user!

  def create
    @comment  = current_user.news_comment.build(params[:comment])
    if @comment.save
      flash[:success] = "Комментарий добавлен!"
      redirect_to(:back)
    else
      redirect_to(:back)
    end
  end

  def destroy
  end

end

