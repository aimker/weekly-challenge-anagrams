class Anagram
  def initialize(word)
    @word = word
  end

  def match(words_array)
    words_array.select do |possible_anagram|
      @word.downcase.split(//).sort == possible_anagram.downcase.split(//).sort &&
      @word.downcase != possible_anagram.downcase
    end
  end
end

detector = Anagram.new('galea')
a = detector.match(['eagal'])
p a
