class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def show
    @product = Product.find(params[:id])
  end
  def new
    @product = Product.new
  end
  def create
    @product = Product.new(product.name)
    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
    def edit
      @product = Product.find(params[:id])
    end
    def update
      @product = Product.find(params[:id])
      if @product.update(product_params)
        redirect_to @product
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end
  private
    def product_params
      params.expect(product: [ :name ])
    end
end
