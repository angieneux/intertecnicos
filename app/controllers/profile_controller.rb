class ProfileController < ApplicationController
  def index

  end

  def order
    @top_products = Spree::Product.last(6)
    @taxonomies = Spree::Taxon.all()
  end
end
