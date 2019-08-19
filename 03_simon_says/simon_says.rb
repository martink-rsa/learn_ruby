#write your code here

def echo input
  input
end

def shout input
  input.upcase
end

def repeat(input, numRepeats = 2)
  ("#{input} " * numRepeats).strip
end

def start_of_word(input,length)
  input.slice(0..length - 1)
end

def first_word(input)
  input.split(" ").first
end

def titleize(input)
  conjunctions = ["and","or","the", "that", "of","on","in","at","over"]
  words = input.split.map do |word| 
    if conjunctions.include? word
      word
    else
      word.capitalize
    end
  end
  words[0] = words.first.capitalize
  words.join(" ")
  
end
