class RomanConversion
  def roman_to_int(s)
    s.chars.map { |numeral| dictionary[numeral] }.sum
  end

  def dictionary
    {
      'I' => 1,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000
    }
  end
end
