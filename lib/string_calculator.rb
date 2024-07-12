class StringCalculator

  def self.add(string)
    # Get delimteter from string
    delimeter = string.split("//").last.split.first if string.start_with?("//")

    if delimeter
      string_arr = string.split("#{delimeter}\n").last.split("#{delimeter}")
    else
      string_arr = string.split(/\n|\,/)
    end

    # Change array of string to array of int and then sum
    string_arr.map(&:to_i).sum
  end
end
