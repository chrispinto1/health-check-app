class EndpointsController < ApplicationController
  before_action :set_endpoint, only: [:show, :edit, :update, :destroy]

  def index
    @endpoints = Endpoint.all
  end

  def show
  end

  def new
    @endpoint = Endpoint.new
  end

  def create
    @endpoint = Endpoint.new(endpoint_params)
    if @endpoint.save
      #Edit the route file to include new endpoint
      redirect_to @endpoint, notice: 'Endpoint was successfully created.'
    else
      render :new
    end
  end

  def update
    if @endpoint.update(endpoint_params)
      redirect_to @endpoint, notice: 'Endpoint was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @endpoint.destroy
    redirect_to endpoints_url, notice: 'Endpoint was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endpoint
      @endpoint = Endpoint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def endpoint_params
      params.require(:endpoint).permit(:url, :accessible)
    end
end
