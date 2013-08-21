#encoding : utf-8
class RecordsController < ApplicationController
  def index
    @title = 'Блог'
    if params[:tag]
      @blog = Record.tagged_with(params[:tag]).page(params[:page]).per(5)
    else
      @blog = Record.order("created_at DESC").page(params[:page]).per(5)
    end
  end

  def show
    @record = Record.find(params[:id])
    @title = @record.header
    @comments = @record.record_comment.page(params[:page]).per(10)
    if user_signed_in?
      @comment = RecordComment.new
      @comment.record_id = @record.id
    end
  end
end
