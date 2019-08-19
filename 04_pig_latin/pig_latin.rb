#write your code here

def translate input
  vowels = %w(a e i o u)
  words = input.split.map do |word|
    item = word.split("")
    # Modify a string which will have "ay" appended onto the end of it
    translated = ""
    # Check if current character is a vowel
    isVowel = vowels.include? item[0].downcase
    until isVowel  
      # Edge case: 'qu', rotate an additional time to move the u with the q
      if item[0].downcase == 'q' && item[1].downcase == 'u'
        item = item.rotate(1)
      end
        item = item.rotate(1)
      isVowel = vowels.include? item[0].downcase   
    end 
    translated = item.join("") + "ay"
  end
  words.join(" ")
end
