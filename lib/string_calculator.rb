class StringCalculator
  def self.add(str)
    return 0 if str.empty?

    return str.to_i if str.length == 1

    numbers = str.split(',').map(&:to_i)
    numbers[0] + numbers[1]
  end
end
