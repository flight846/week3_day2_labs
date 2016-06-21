class CustomersController < ApplicationController
    # CREATE
    def new 
        @customer = Customer.new
    end
    
    def create
        customer_params = params.require(:customer).permit(:name, :email, :address)
        @customer = Customer.new(customer_params)

        if @customer.save
            redirect_to @customer, notice: 'customer was successfully created.'
        else
            render :new
        end
    end
    
    # READ
    def index
        @customers = Customer.all
    end
    
    def show
        @customer = Customer.find(params[:id])
    end
    
    def edit
        @customer = Customer.find(params[:id])
    end
    
    # UPDATE
    def update
        customer_params = params.require(:customer).permit(:name, :email, :address)
        # @customer = Customer.new(customer_params)
        @customer = Customer.find(params[:id])

        if @customer.update(customer_params)
            redirect_to @customer, notice: 'customer was successfully update.'
        else
            render :edt
        end
    end
    
    # DESTROY
    def destroy
        customer = Customer.find(params[:id])
        customer.destroy
        
        redirect_to customers_path, notice: "customer deleted"
    end
end
