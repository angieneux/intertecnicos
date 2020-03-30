# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @top_products = Spree::Product.last(6)
  end
end
