class ClientsController < ApplicationController
    before_action :set_client, only: [:update, :destroy]

    def index
        @clients = Client.all

        render json: @clients
    end

    def create
        @client = Client.new(client_params)

        if @client.save
            render json: @client, status: :created, location: @client
        else
            render json: @client.errors, status: :unprocessable_entity
        end
    end

    def update
    end

    def destroy
    end

    private

        def set_client
            @client = Pet.find(params[:id])
        end

        def client_params
            params.require(:client).permit(:name, :age, :summary)
        end

end
