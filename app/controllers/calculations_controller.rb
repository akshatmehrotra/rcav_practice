class CalculationsController < ApplicationController
  def home
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def square
    @the_number = params[:number].to_f
    @answer = @the_number*@the_number
  end


  def pmt
    # /payment/:interest_rate/:number_of_payments/:present_value
    # pv*rate*((1+rate)**nper)/(((1+rate)**nper)-1)
    pv = params[:present_value].to_f
    rate = params[:interest_rate].to_f/1200
    nper = params[:number_of_payments].to_f
    @payment = pv*rate*((1+rate)**nper)/(((1+rate)**nper)-1)
    # @payment = params[:present_value].to_f*(params[:interest_rate].to_f/12)*((1+(params[:interest_rate].to_f/12)**params[:number_of_payments])/(((1+(params[:rate].to_f/12)**params[:number_of_payments].to_f)-1)
    # @payment = params[:present_value].to_f*(params[:interest_rate].to_f/12)*(1+(params[:interest_rate].to_f/12))**params[:number_of_payments].to_f)/(((1+(params[:interest_rate].to_f/12)**params[:number_of_payments].to_f)-1)

  end
end
