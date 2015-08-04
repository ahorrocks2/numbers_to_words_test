class Fixnum
  define_method(:numbers) do
    english_words = Hash.new()
    english_words.store(1, "one")
    english_words.fetch(1)
  end
end
