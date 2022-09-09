dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  str_array = string.downcase.gsub(/[[:punct:]]/, "").split(" ")
# create a new hash that totals the words that are included in the dictionary
  dictionary.reduce(Hash.new(0)) do |result, word|
    str_array.each do |element|
      if element.include?(word)
        result[word] += 1
      end
    end
    result
  end
end

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)