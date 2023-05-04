dictionary_words = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "** SUBSTRINGS **"
puts "Please enter a word or sentence:"
text = gets.chomp

def substrings(words, dictionary)
    result = Hash.new(0)
    #Split a string removing the special characters and spaces too
    dictionary.each do |word|
        result[word] = words.downcase.scan(/(?=#{word})/).count if words.downcase.include?(word)
    end
    result
end

puts substrings(text,dictionary_words)