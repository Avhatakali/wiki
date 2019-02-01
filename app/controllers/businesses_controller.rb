class BusinessesController < ApplicationController

  def index
      @businesses = Business.all
  end

  def show
      @business = Business.find(params[:id])
  end

  def new
      @business = Business.new
  end

  def edit
      @business = Business.find(params[:id])
  end

  def create
      @business = Business.new(business_params)

      if @business.save
        redirect_to businesses_path

      else
        render 'new'
      end
  end

  def update
      @business = Business.find(params[:id])

      if @business.update(business_params)
          redirect_to businesses_path
      else
          render 'new'
      end
  end

  private
      def business_params
          params.require(:business).permit(:business_type)
      end
end
