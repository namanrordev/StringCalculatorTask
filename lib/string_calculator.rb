class StringCalculator

  def self.add(string)
    # Get delimiter from string
    if string.start_with?("//")
      if string.start_with?("//[")
        delimiter = string[/\[(.*)\]\n/, 1].split("][")
      else
        delimiter = string[/\/\/(.*)\n/, 1]
      end
    end

    # Find array of string for sum
    if delimiter
      string_arr = string.split("\n").last.split(Regexp.union(delimiter))
    else
      string_arr = string.split(/\n|\,/)
    end

    # Change array of string to array of int and then sum
    string_arr.map(&:to_i).sum
  end
end
