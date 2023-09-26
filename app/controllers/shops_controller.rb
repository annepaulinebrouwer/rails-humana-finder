class ShopsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  before_action :set_shop, only: [:show, :create]
  before_action :shop_params, only: [:create]

  def show
    @review = Review.new
  end

  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      render :show, status: :created
    else
      flash[:alert] = "Couldn't create the shop"
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:name, :street, :zipcode, :city, :neighbourhood, :popup)
  end
end
