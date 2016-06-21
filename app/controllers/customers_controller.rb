class CustomersController < ApplicationController
    # CREATE
    def new 
    end
    
    def create
    end
    
    # READ
    def index
        @customers = Customer.all
    end
    
    def show
        @customer = Customer.find(params[:id])
    end
    
    def edit
    end
    
    # UPDATE
    def update
    end
    
    # DESTROY
    def destroy
    end
end
