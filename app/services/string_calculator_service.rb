# frozen_string_literal: true

# handle calculation for calculator
class StringCalculatorService
  attr_accessor :user_parmas, :errors

  def initialize(params)
    @user_parmas = params.with_indifferent_access
    @errors = []
  end

  def addition
    return 0 unless validate_params

    numbers = @user_parmas['numbers']
    delimiter = ','
    if numbers.start_with?('//')
      custom_delimiter = numbers[2]
      numbers2 = numbers.split("\n")[1]
      # handle auto string conversion \n to \\n
      numbers = numbers2.nil? ? numbers.split('\\n')[1] : numbers2
      delimiter = custom_delimiter
    end

    numbers = numbers.split(/#{delimiter}|\n/).map(&:to_i)
    return 0 if negatives?(numbers)

    numbers.sum
  end

  private

  def negatives?(numbers)
    negat_numbs = numbers.select(&:negative?)
    errors << "Negative numbers not allowed: #{negat_numbs.join(', ')}" if negat_numbs.any?
    negat_numbs.any?
  end

  def validate_params
    unless user_parmas['numbers'].present?
      errors << 'Empty String'
      return
    end

    user_parmas['numbers']
  end
end
