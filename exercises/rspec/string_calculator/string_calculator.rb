class StringCalculator
  def self.add(string)
    sum = 0
    string.split(',').each do |value|
      if value[0] == "\n"
        raise ArgumentError, 'number starts with a new line' 
      end
      value = value.to_i
      if value < 0
        raise ArgumentError, 'no negative numbers'
      end
      sum += value.to_i
    end
    sum
  end
end
