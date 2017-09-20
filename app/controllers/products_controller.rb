class ProductsController < ApplicationController

    def index
        render json: Product.all, adapter: :json
    end

    def show
        render json: Product.find(params[:id]), adapter: :json
    end

    def create
        params[:products].each do |product| 
            @product = Product.create(
                name:               product[:name],
                price:              product[:price],
                img_src:            product[:img_src],
                description:        product[:description],
                available_quantity: product[:available_quantity]
            )
        end

        render :status => 200
    end

end
