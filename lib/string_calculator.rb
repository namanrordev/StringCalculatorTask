class StringCalculator

  def self.add(string)
    # Get delimiter from string
    delimiter = string.split("//").last.split("\n").first.gsub(/\[|\]/, '') if string.start_with?("//")

    if delimiter
      string_arr = string.split("\n").last.split("#{delimiter}")
    else
      string_arr = string.split(/\n|\,/)
    end

    # Change array of string to array of int and then sum
    string_arr.map(&:to_i).sum
  end
end
