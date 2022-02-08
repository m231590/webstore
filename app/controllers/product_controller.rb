class ProductController < ApplicationController
    def show
        @products = Product.find(params[:id])
    end
end
