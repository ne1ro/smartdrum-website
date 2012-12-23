#encoding : utf-8
class RecordsController < ApplicationController
  def index
    @title = 'Блог'
    @blog = Record.order("created_at DESC").page(params[:page]).per(5)
  end

  def show
    @record = Record.find(params[:id])
    @title = @record.header
  end
end
