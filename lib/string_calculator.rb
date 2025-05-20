class StringCalculator
  class << self
    def add(str)
      @str = str

      return 0 if @str.empty?

      raise_error_if_str_contains_negative_numbers

      numbers.sum
    end

    private

    # Remove the custom delimeter part if necessary
    def sanitized_str
      return @str unless @str.start_with?('//')

      @str.split('\n').last
    end

    def numbers
      sanitized_str.split(delimeter).map(&:to_i)
    end

    def delimeter
      return /,|\\n/ unless @str.start_with?('//')

      @str.split('\n').first[2]
    end

    def raise_error_if_str_contains_negative_numbers
      negative_numbers = numbers.select { |number| number < 0 }
    
      if negative_numbers.any?
        raise "negative numbers not allowed #{negative_numbers.join(',')}"
      end
    end
  end
end
