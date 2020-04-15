# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @top_products = Spree::Product.last(6)
  end

  def select
    @selected =  Spree::Product.find(params[:id])
    @prod = {prod: @selected ,img: @selected.display_image.attachment(:large), price: @selected.display_price}
    render json: @prod
  end
end
