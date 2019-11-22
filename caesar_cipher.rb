def caesar_cipher(string, shift)

    # Hash to store the unicode ranges of upperase and lowercase letters
    character_ranges = {:uppercase => (65..90), :lowercase => (97..122)}
    shifted_string_array = [];

    # Loop through each character
    string.each_char{|char|
        # Only shift alphabetic characters
        if (char.match /[a-zA-Z]/)
            # define our shifted character's unicode result
            shifted_char_code = char.ord + shift
            
            # is the shifted character beyond the boundaries?
            is_shifted_character_in_range = (character_ranges[:uppercase]  === shifted_char_code || character_ranges[:lowercase] === shifted_char_code );
            
            if (!is_shifted_character_in_range)
                # wrap the character
                shifted_char_code -= 26;
            end
        else
            # Our character isn't alphabetic, don't shift it
            shifted_char_code = char.ord;
        end

        shifted_string_array.append(shifted_char_code.chr)
    }
    return shifted_string_array.join;
end

# This function is extra, it deciphers text written in the caesar cipher given a known shift
def caesar_decipher(string, deshift)

    character_ranges = {:uppercase => (65..90), :lowercase => (97..122)}
    deshifted_string_array = [];

    # Loop through each character
    string.each_char{|char|
        # Only deshift alphabetic characters
        if (char.match /[a-zA-Z]/)
            # define our deshifted character's unicode result
            deshifted_char_code = char.ord - deshift
            
            # is the deshifted character beyond the boundaries?
            is_deshifted_character_in_range = (character_ranges[:uppercase]  === deshifted_char_code || character_ranges[:lowercase] === deshifted_char_code );
            
            if (!is_deshifted_character_in_range)
                # wrap the character
                deshifted_char_code += 26;
            end
        else
            # Our character isn't alphabetic, don't deshift it
            deshifted_char_code = char.ord;
        end

        deshifted_string_array.append(deshifted_char_code.chr)
    }
    return deshifted_string_array.join;
end

puts ciphertext = caesar_cipher("You are beautiful", 5)
puts message = caesar_decipher(ciphertext, 5)
