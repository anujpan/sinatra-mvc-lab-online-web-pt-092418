class PigLatinizer

     def piglatinize(message)
        if message.split(" ").length == 1
            piglatinize_word(message)
        else
            message.split.collect { |word| piglatinize_word(word) }.join(" ")
        end
    end

     def consonant?(letter)
        !letter.downcase.match(/[aeiou]/)
    end

     def piglatinize_word(word)
        if consonant?(word[0])
            if consonant?(word[1])
                if consonant?(word[2])
                    word = word[3..-1] + word[0,3]
                else
                    word = word[2..-1] + word[0,2]
                end
            else
                word = word[1..-1] + word[0,1]
            end
        else
            word = word + 'w'
        end
        word = word + 'ay'
    end

 end 