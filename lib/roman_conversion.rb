class RomanConversion
  def roman_to_int(s)
    calculate_value(s).sum
  end

  def to_integers(numerals)
    numerals.chars.map { |numeral| dictionary[numeral] }
  end

  def to_chunks(numerals)
    to_integers(numerals).chunk_while { |first_value, second_value| first_value <= second_value }
  end

  def calculate_value(s)
    to_chunks(s).map do |chunk|
      if chunk.first < chunk.last
        chunk.reverse.inject(:-)
      else
        chunk.sum
      end
    end
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
