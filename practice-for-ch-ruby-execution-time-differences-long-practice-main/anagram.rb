def first_anagram?(word_1, word_2)
  anagrams = word_1.split("").permutation.to_a
  anagrams.each do |anagram|
    if anagram.join == word_2
      return true
    end
  end
  false
end

p first_anagram?("hello", "cat")
p first_anagram?("catt", "cat")
p first_anagram?("atc", "cat")
puts

def second_anagram?(word_1, word_2)
  word_1.each_char do |char|
    idx = word_2.index(char)
    if !idx.nil?
      word_2.slice!(idx)
    else
      return false
    end
  end
  word_2.empty?
end

p second_anagram?("hello", "cat")
p second_anagram?("catt", "cat")
p second_anagram?("atc", "cat")