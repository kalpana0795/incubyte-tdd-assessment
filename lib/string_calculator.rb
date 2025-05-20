class StringCalculator
  def self.add(str)
    return 0 if str.empty?

    return str.to_i if str.length == 1

    numbers = str.split(',').map(&:to_i)
    numbers.sum
  end
end
