class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
  end

  def show
  end

  def edit
  end

  private

  def product_params
    params.require(:product).permit(:image)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end