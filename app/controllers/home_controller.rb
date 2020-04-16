# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @top_products = Spree::Product.last(6)
  end

  def select
    @selected =  Spree::Product.find(params[:id])
    @product_properties = @selected.product_properties.includes(:property)
    @taxons = @selected.taxons
    @prod = {prod: @selected ,taxons: @taxons, properties: @product_properties, img: @selected.display_image.attachment(:large), price: @selected.display_price}
    render json: @prod
  end
end
