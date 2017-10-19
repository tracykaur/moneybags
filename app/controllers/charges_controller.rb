class ChargesController < ApplicationController
  def new
  end

  def create
    @cart = Cart.all
    # Amount in cents
    @total = 0
    @cart.each do |cart|
      @total = @total + (cart.product.price * cart.quantity.to_i)
    end


  items = "Tea"

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => (@total * 100).to_i,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )
    PurchaseMailer.purchase_confirmation(items, @total).deliver_now
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end



end
