class Book
    # write your code here
    def initialize(title="")
        @title = title
    end

    def title=(title="")
        exceptions = ['a', 'an', 'and', 'the', 'in', 'of']
        title = title.split(" ")
        title.each do |word|
            if(!exceptions.include?(word) or word == title[0])
                word.capitalize!
            end
        end
        title = title.join(" ")
        @title = title
    end

    def title
        return @title
    end
end
