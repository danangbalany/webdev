def translate(words)
    word_arr = words.split(" ")
    final_word = []
    index = 0

    def check_vowels(char_to_check)
        vowels = ['a', 'i', 'u', 'e', 'o']
        vowels.each do |char|
            if (char == char_to_check.downcase)
                return true
            end
        end
        return false
    end

    word_arr.each do |el|
        new_word = el.split("")
        index = 0
        while (index < new_word.length) do
            if(check_vowels(new_word[index]) && index == 0)
                new_word = new_word.join("") + "ay"
            elsif (!check_vowels(new_word[index]) && index == 0)
                while(!check_vowels(new_word[index]))
                    if (new_word[index].downcase == "q" && new_word[index+1].downcase == 'u' )
                        new_word = new_word.push(new_word.shift().downcase)
                        new_word = new_word.push(new_word.shift().downcase)
                    else
                        new_word = new_word.push(new_word.shift().downcase)
                    end
                end
                new_word = new_word.join("") + "ay"
            end
            index += 1
        end
        final_word << new_word
    end

    def check_capitals(string1, string2)
        index = 0
        while (index < string1.length)
            if(string1[index][0] == string1[index][0].upcase)
                string2[index][0] = string2[index][0].upcase
            end
            index += 1
        end
    end

    check_capitals(word_arr, final_word)
    p final_word.join(" ")

end
