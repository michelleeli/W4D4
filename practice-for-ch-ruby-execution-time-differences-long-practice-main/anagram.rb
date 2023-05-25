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

def third_anagram?(word_1, word_2)
  word_1.split("").sort == word_2.split("").sort
end 

puts
p third_anagram?("hello", "cat")
p third_anagram?("catt", "cat")
p third_anagram?("atc", "cat")

def fourth_anagram?(word_1, word_2)
  anagram_helper(word_1) == anagram_helper(word_2)
end

def anagram_helper(word)
  hash = Hash.new(0)
  word.each_char { |char| hash[char] += 1 }
  hash
end 

puts
p fourth_anagram?("hello", "cat")
p fourth_anagram?("catt", "cat")
p fourth_anagram?("atc", "cat")

def bonus_anagram?(word_1, word_2)
  hash = Hash.new(0)
  word_1.each_char { |char| hash[char] += 1 }
  word_2.each_char { |char| hash[char] -= 1}
  hash.values.all? { |val| val == 0}
end 

puts
p bonus_anagram?("hello", "cat")
p bonus_anagram?("catt", "cat")
p bonus_anagram?("atc", "cat")
