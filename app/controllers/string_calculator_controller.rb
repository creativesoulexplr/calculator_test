# frozen_string_literal: true

# Controller to handle logic for calculator
class StringCalculatorController < ApplicationController
  def index; end

  def calculate
    @numbers = params['numbers']
    @scs = StringCalculatorService.new({ numbers: @numbers })
    @result = @scs.addition
    render :index
  end

end
