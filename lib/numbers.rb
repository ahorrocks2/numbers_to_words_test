class Fixnum
  define_method(:numbers) do
    ones_digit = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine" }
    teens = { 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen" }
    tens_digit = { 1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}

    final_english = []
    if self < 10
      split_number_ones = self
      final_english.push(ones_digit.fetch(split_number_ones))
    elsif self > 10 && self < 20
      final_english.push(teens.fetch(self))
    else
      split_number_tens = self./(10)
      split_number_ones = self.%10
      final_english.push(tens_digit.fetch(split_number_tens))
      final_english.push(ones_digit.fetch(split_number_ones))
    end
    final_english.join(" ")
  end
end
