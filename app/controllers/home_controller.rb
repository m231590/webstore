class HomeController < ApplicationController
    def index
        if session[:cart].nil?
            session[:cart] = []
        end
        @products = Product.all #pass all the products to the index view
        @cart = session[:cart] #pass cart information to the index view
    end

    def list
        @products = Product.all
        render json: @products
    end
    
    def buy
        if session[:cart].nil?
            session[:cart] = []
        end
        product = Product.find(params[:id]) #get id for the parameter you want to buy
        session[:cart].append(product) #cart cookie
        redirect_to :root #no new view for the buy function
    end

    def checkout
        @cart = session[:cart]
        session[:cart] = [] #empty the cart
    end
end
