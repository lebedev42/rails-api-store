class OrdersController < ApplicationController

    def index
        @orders = Order.all

        @orders.each do |order|
            order.products = []

            order.positions.each do |position|
                @product = Product.find(position[:product_id])
                @product.order_quantity = position[:quantity]

                order.products.push(@product)
            end
        end

        render json: @orders, adapter: :json
    end

    def create
        @order = Order.create(
            customer_name:   params[:customer_name],
            customer_phone:  params[:customer_phone],
            total_price:     params[:total_price],
        )
        if @order.save
            params[:products].each do |product|
                product_in_order = Product.find(product[:id])
                product_in_order.available_quantity = product_in_order.available_quantity - product[:quantity]
                product_in_order.save

                Position.create(
                    order_id:   @order.id,
                    product_id: product[:id],
                    quantity:   product[:quantity]
                )
            end
            render :json => { :message => 'Order was created' }, :status => 200
        else
            render :json => { :errors => @order.errors.full_messages }, :status => 422
        end
    end

end
