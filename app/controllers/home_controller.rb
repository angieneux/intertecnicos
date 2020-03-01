# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @top_products = Spree::Product.limit(6)
  end
end
