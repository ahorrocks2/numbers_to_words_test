class Fixnum
  define_method(:numbers) do
    ones_digit = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine" }
    teens = { 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen" }
    tens_digit = { 1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
    hundreds_digit = { 1 => "one hundred", 2 => "two hundred", 3 => "three hundred", 4 => "four hundred", 5 => "five hundred", 6 => "six hundred", 7 => "seven hundred", 8 => "eight hundred", 9 => "nine hundred"}

    final_english = []
    if self < 10
      split_number_ones = self
      final_english.push(ones_digit.fetch(split_number_ones))
    elsif self > 10 && self < 20
      final_english.push(teens.fetch(self))
    elsif self > 99 && self < 1000
      split_number_hundreds = self./(100)
      temp_tens = self.%100
        if temp_tens == 0
          final_english.push(hundreds_digit.fetch(split_number_hundreds))
        elsif temp_tens > 10 && temp_tens < 20
          final_english.push(hundreds_digit.fetch(split_number_hundreds))
          final_english.push(teens.fetch(temp_tens))
        else
          split_number_tens = temp_tens./(10)
          split_number_ones = self.%10

          final_english.push(hundreds_digit.fetch(split_number_hundreds))
          final_english.push(tens_digit.fetch(split_number_tens))
          final_english.push(ones_digit.fetch(split_number_ones))
        end
    else
      split_number_tens = self./(10)
      split_number_ones = self.%10
        if split_number_ones == 0
          final_english.push(tens_digit.fetch(split_number_tens))
        else
          final_english.push(tens_digit.fetch(split_number_tens))
          final_english.push(ones_digit.fetch(split_number_ones))
        end
    end
    final_english.join(" ")
  end
end
