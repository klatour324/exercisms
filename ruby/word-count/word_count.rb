class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words.each_with_object(Hash.new(0)) do |word, counts|
      counts[word.downcase] += 1
    end
  end

  private

  def words
    @phrase.scan(/\w+(?:'\w)*/)
  end
end

module BookKeeping
  VERSION = 1
end
