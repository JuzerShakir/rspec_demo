class SmartphoneController < ApplicationController
  def new
    @phone = Smartphone.new
  end

  def create
    @phone = Smartphone.new(smartphone_params)
    if @phone.valid?
      @phone.save
      redirect_to :root
    else
      render :new
    end
  end

  private

    def smartphone_params
      params.require(:smartphone).permit(:brand, :model)
    end
end
