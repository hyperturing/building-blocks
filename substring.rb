def substrings(string, dictionary)
    # create an emtpy hash for patterns and their frequency
    # split our string into words
    # loop through each word in our string
    #   loop through each pattern in our dictionary array
    #       if word matches a pattern
    #           if the pattern does not exist in our frequency hash
    #               add the pattern and set it's frequency to 1
    #           else
    #               incrememnt the pattern's frequency
    pattern_frequency_hash = {}
    string.split(" ").each do |word|
        dictionary.each do |pattern|
            if  word =~ Regexp.new(pattern)
                if (pattern_frequency_hash[pattern])
                    pattern_frequency_hash[pattern] += 1;
                else
                    pattern_frequency_hash[pattern] = 1;
                end
            end
        end
    end
    pattern_frequency_hash;
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)