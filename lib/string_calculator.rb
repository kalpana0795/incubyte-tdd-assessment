class StringCalculator
  def self.add(str)
    return 0 if str.empty?

    numbers = str.split(/,|\\n/).map(&:to_i)
    numbers.sum
  end
end
