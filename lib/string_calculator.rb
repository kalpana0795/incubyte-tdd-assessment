class StringCalculator
  class << self
    def add(str)
      @str = str

      return 0 if @str.empty?

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
  end
end
