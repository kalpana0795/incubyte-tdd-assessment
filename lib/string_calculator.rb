class StringCalculator
  class << self
    def add(str)
      return 0 if str.empty?

      numbers = parse_numbers(str)

      raise_error_if_str_contains_negative_numbers(numbers)

      numbers.reject { |number| number > 1000 }.sum
    end

    private

    def parse_numbers(str)
      delimeter, sanitized_str = extract_delimeter_and_sanitized_str(str)
      sanitized_str.split(delimeter).map(&:to_i)
    end

    def extract_delimeter_and_sanitized_str(str)
      if str.start_with?('//')
        delimeter_str, sanitized_str = str.split('\n')
        delimeter = extract_custom_delimeter(delimeter_str) || delimeter_str[2]
        [delimeter, sanitized_str]
      else
        [/,|\\n/, str]
      end
    end

    def extract_custom_delimeter(delimeter_str)
      delimeter_str.scan(/[.*]/)[0]
    end

    def raise_error_if_str_contains_negative_numbers(numbers)
      negative_numbers = numbers.select { |number| number < 0 }
    
      if negative_numbers.any?
        raise "negative numbers not allowed #{negative_numbers.join(',')}"
      end
    end
  end
end
