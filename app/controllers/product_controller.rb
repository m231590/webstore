class ProductController < ApplicationController
    def show
        @products = Product.find(params[:id])
    end
    
    def new
        @products = Product.new
    end

    def list
        @products = Product.all
        render json: @products, only: [:id, :name, :quantity, :price]
    end

    def create
        @products = Product.new(name: "...", description: "...", price: "...")

        if @products.save
            redirect_to @products
        else
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        @products = Product.find(params[:id])
        @products.destroy

        redirect_to root_path, status: :see_other
    end

    private
        def product_params
            params.require(:product).permit(:title, :body)
        end
end
