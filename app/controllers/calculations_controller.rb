class CalculationsController < ApplicationController
  def home
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end


  def square
    @the_number = params[:number].to_f
    @answer = @the_number ** 2
  end


  def pmt
    @present_value = params[:present_value].to_f
    @rate = params[:rate].to_f
    @number_of_payment = params[:number_of_payment].to_f

    @monthly_interest_rate = @rate /1200
    @numerator = @monthly_interest_rate*@present_value
    @denominator = 1 - (1+@monthly_interest_rate)** - @number_of_payment
    @payment = @numerator/@denominator

  end
end
