def substrings(string, dictionary)
    pattern_frequency_hash = {}

    # split our string into words and loop through each word in our string
    string.split(" ").each do |word|
        # loop through each pattern in our dictionary array
        dictionary.each do |pattern|

            # increment a found pattern's frequency by one or create it in our hash
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