class PurchaseMailer < ApplicationMailer
  def purchase_confirmation(items, amount)
  @items = items
  @amount = amount
  my_email = "tracykaur@yahoo.com"
  mail(to: my_email, subject: "Purchase confirmation of #{@items}")

  end
end
