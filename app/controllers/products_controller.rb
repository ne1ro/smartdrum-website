#encoding: utf-8
class ProductsController < ApplicationController
  def index
    @title = 'Продукция'
    @products = Product.order("created_at DESC").page(params[:page]).per(5)
  end

  def show
    @product = Product.find(params[:id])
    @title = @product.name
  end
end
