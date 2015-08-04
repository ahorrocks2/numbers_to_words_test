class Fixnum
  define_method(:numbers) do
    ones_digit = { 1 => "one"}
    tens_digit = { 2 => "twenty"}

    final_english = []
    if self < 10
      split_number_ones = self
    else
      split_number_tens = self./(10)
      split_number_ones = self.%10
      final_english.push(tens_digit.fetch(split_number_tens))
    end

    final_english.push(ones_digit.fetch(split_number_ones))
    final_english.join(" ")
  end
end
