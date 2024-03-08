class StringCalculatorController < ApplicationController
  def index
  end

  def calculate
    StringCalculatorService.new(params).addition
  end

end
