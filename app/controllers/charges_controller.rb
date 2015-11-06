class ChargesController < ApplicationController
  def new
  end

  def create
    @email =  params[:stripeEmail]
    name = params[:stripeShippingName]
    address = params[:stripeShippingAddressLine1]
    zip = params[:stripeShippingAddressZip]
    state = params[:stripeShippingAddressState]
    city = params[:stripeShippingAddressCity]
    new_info = Info.new(name: name, address: address, zip: zip, state: state, city: city, email: @email)

    @amount = 2500
    customer = Stripe::Customer.create(
      :email => @email,
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'TKE Nu Desktop Calendar 2016',
      :currency    => 'usd'
    )
    new_info.save!
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
