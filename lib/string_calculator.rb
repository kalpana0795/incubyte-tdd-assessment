class StringCalculator
  def self.add(str)
    return 0 if str.empty?

    delimeter = /,|\\n/

    if str.start_with?('//')
      delimeter_str, str = str.split('\n')
      delimeter = delimeter_str[2]
    end

    numbers = str.split(delimeter).map(&:to_i)
    numbers.sum
  end
end
