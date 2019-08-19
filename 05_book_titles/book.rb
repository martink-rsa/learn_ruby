class Book
# write your code here
  attr_reader :title
  def title=(book_title)
    conjunctions = %w(a and an or the that of on in at over)
    words = book_title.split.map do |word|
      if conjunctions.include? word
        word
      else
        word.capitalize
      end
    end   
    words.first.capitalize!
    @title = words.join(" ")
  end
end
