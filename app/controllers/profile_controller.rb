class ProfileController < ApplicationController
  def index

  end

  def order
    @top_products = Spree::Product.last(6)
    @taxonomies = Spree::Taxonomy.includes(root: :children).find_by(name: 'Categories').taxons

  end
end
