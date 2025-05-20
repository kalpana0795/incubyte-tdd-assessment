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
      delimiter, sanitized_str = extract_delimiter_and_sanitized_str(str)
      sanitized_str.split(delimiter).map(&:to_i)
    end

    def extract_delimiter_and_sanitized_str(str)
      if str.start_with?('//')
        delimiter_str, sanitized_str = str.split('\n')
        delimiter = extract_custom_delimiter(delimiter_str)
        [delimiter, sanitized_str]
      else
        [/,|\\n/, str]
      end
    end

    def extract_custom_delimiter(delimiter_str)
      delimiters = delimiter_str.scan(/\[(.*?)\]/)

      delimiters.any? ? Regexp.union(delimiters.flatten) : delimiter_str[2]
    end

    def raise_error_if_str_contains_negative_numbers(numbers)
      negative_numbers = numbers.select { |number| number.negative? }
    
      raise "negative numbers not allowed #{negative_numbers.join(',')}" if negative_numbers.any?
    end
  end
end
