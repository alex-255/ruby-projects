dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  # substrings("below", dictionary)
  # => { "below" => 1, "low" => 1 }

def substrings(string, dictionary)
  result = Hash.new(0)
  dictionary.each do |word|
    number_of_encounter = string.scan(word).count # #scan returns an array, #count counts array's elements
    if number_of_encounter
      result[word] = number_of_encounter  
    end
  end
  result
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
  # => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }