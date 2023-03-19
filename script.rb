filename = ARGV[0]

file = File.open(filename, "r")
contents = file.read

words = contents.split
total_words = words.length

word_frequency = Hash.new(0)
words.each { |word| word_frequency[word.downcase] += 1 }

sorted_words = word_frequency.sort_by { |word, count| -count }
puts "Total words: #{total_words}"
puts "Unique words: #{word_frequency.length}"
puts "Most frequent words: "
sorted_words.first(10).each { |word, count| puts "#{word}: #{count}" }