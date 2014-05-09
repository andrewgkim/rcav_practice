class CalculationsController < ApplicationController
  def home
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt(rate, nper, pv)
    @payment = (rate/12 * pv) / (1 - ((1 + rate/12) ** -nper))
  end
end
