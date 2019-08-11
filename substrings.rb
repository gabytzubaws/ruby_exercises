dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings (str, dictionary)
  matches = {}
  dictionary.each do |word|
    if str.match(/#{word}/i) 
      matches[word] = str.scan(/#{word}/i).length
    end
  end
  p matches
end


substrings "Howdy partner, sit down! How's it going", dictionary
