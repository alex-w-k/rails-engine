class Api::V1::Invoices::CustomersController < ApplicationController
  include Swagger::Docs::Methods
  
  swagger_controller :invoice_customer, "Invoices Customer Controller"

  swagger_api :index do
    summary "Fetches customer associated with specific invoice"
    param :query, :id, :integer, :optional, "id"

    response :not_found
  end

  def show
    render json: Invoice.find(params[:id]).customer
  end
end
