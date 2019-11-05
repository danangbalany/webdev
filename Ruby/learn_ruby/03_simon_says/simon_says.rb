def echo string
    string
end

def shout string
    string.upcase
end

def repeat(string, times = 2)
    final_string = ''
    times.times do |i|
        if i == 0
            final_string += string
        else
            final_string += ' ' + string
        end
    end
    final_string
end

def  start_of_word string, ind
    result = ''
    ind.times do |i|
        result += string[i]
    end
    result
end

def first_word string
    word = ''
    string.length.times do |i|
        if string[i] == " "
            word = string[0..i - 1]
            break
        end
    end
    word
end

def titleize string
    little_words = ['and', 'the', 'over', 'of']
    title_words = []
    words = string.split(' ')
    words.length.times do |i|
        if little_words.index(words[i]) != nil && i != 0
            title_words.push(words[i])
        else
            word = words[i].capitalize
            title_words.push(word)
        end
    end
    title_words.join(' ')
end
