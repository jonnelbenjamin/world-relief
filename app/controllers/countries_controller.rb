class CountriesController < ApplicationController


  def index
      @countries = Country.distinct.pluck(:name)
  end


  def show
       @country = Country.where(name: params[:name])
     end

  private

  def strong_params

  end
end
