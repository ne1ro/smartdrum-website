#encoding : utf-8
class NewsCommentsController < ApplicationController
before_filter :authenticate_user!
before_filter :authorized_user, :only => :destroy

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
    @comment.destroy
    redirect_to(:back)
  end

  private
    def authorized_user
      @comment = current_user.news_comment.find_by_id(params[:id])
       redirect_to root_path if @comment.nil?
    end

end

