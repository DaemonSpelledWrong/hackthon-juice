class PowdersController < ApplicationController
  def index
    @powders = Powder.all

    render json: @powders
  end

  def show
    @powder = Powder.find(params[:id])

    render json: @powder
  end

  def create
    @powder = Powder.create({
      name: params[:name],
      brand: params[:brand],
      flavor: params[:flavor],
      productImage: params[:productImage],
      nutritionImage: params[:nutritionImage],
      price: params[:price]
    })

    render json: {
      powder: @powder,
      message: 'Instance created!'
    }
  end

  def destroy
    @powder = Powder.find(params[:id])
    @powder.destroy

    render status: 204
  end

  def update
    @powder = Powder.find(params[:id])
    @powder.update({
      name: params[:name],
      brand: params[:brand],
      flavor: params[:flavor],
      productImage: params[:productImage],
      nutritionImage: params[:nutritionImage],
      price: params[:price]
    })

    render json: {
      powder: @powder,
      message: 'Instance updated!'
    }
  end
end
