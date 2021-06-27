class String
    def permutation(&block)
        string = split(//)
        string.permutation { |i| yield i.join }
    end
end

words = ["friend", "finder"]

"firend".permutation do |i|
    puts "#{i}" if words.include?(i)
end