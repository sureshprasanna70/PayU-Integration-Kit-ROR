class CartsController < ApplicationController
  include ActiveMerchant::Billing::Integrations

  def index
    @carts = Cart.all
  end

  def show        
    @cart = current_cart
  end

  def new
    @cart = Cart.new
  end

  def edit
    @cart = Cart.find(params[:id])
  end

  def create
    @cart = Cart.new(params[:cart])
  end

  def update
    @cart = Cart.find(params[:id])
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
  end

  def payu_return
    notification = PayuIn.notification(request.query_string, options = {:merchant_id => $payu_merchant_id, :secret_key => $payu_secret_key, :params => params})

    @cart = Cart.find(notification.invoice) # notification.invoice is order id/cart id which you have submited from payment direction page.

    if notification.acknowledge      
      begin
        if notification.complete?          
          @cart.status = 'success'
          @cart.purchased_at = Time.now
          @order = Order.create(:total => notification.gross, :card_holder_name => params['name_on_card'], :order_number => notification.invoice)
          reset_session
          redirect_to @order
        else          
          @cart.status = "failed"
          render :text =>"Order Failed! MD5 Hash does not match!"
        end
        ensure
        @cart.save
      end
    end    
  end
end
