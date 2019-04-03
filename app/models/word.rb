class Word < ApplicationRecord
  has_one :numbers

  def self.init_file
    File.open(Rails.public_path.join('sample_dictionary.txt')) do |f|
      f.each_line do |line|
        word = Word.create!(name: line)
        word.create_number
      end
    end
  end

  def create_number
    final = []
    self.name.downcase.chars do |char|
      if char == "a" || char == "b" || char == "c"
        final << 2
      elsif char == "d" || char == "e" || char == "f"
        final << 3
      elsif char == "g" || char == "h" || char == "i"
        final << 4
      elsif char == "j" || char == "k" || char == "k"
        final << 5
      elsif char == "m" || char == "n" || char == "o"
        final << 6
      elsif char == "p" || char == "q" || char == "r" || char == "s"
        final << 7
      elsif char == "t" || char == "u" || char == "v"
        final << 8
      elsif char == "w" || char == "x" || char == "y" || char == "z"
        final << 9
      end
    end
    final = final.join.to_i
    Number.create!(number: final, word_id: self.id)
  end
end
