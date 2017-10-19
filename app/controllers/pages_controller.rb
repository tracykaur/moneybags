class PagesController < ApplicationController
  def index
  end

  def cart
    @cart = Cart.all

    @total = 0
    @cart.each do |cart|
      @total = @total + (cart.product.price * cart.quantity.to_i)
    end
  end


end
