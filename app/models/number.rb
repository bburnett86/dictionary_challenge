class Number < ApplicationRecord
  belongs_to :word

  def self.find_word(string)
    puts string.length
    if string.length < 4
      numbers = Number.where(number: string)
    else
      num_array = string.to_s.chars
      num_array = num_array - ["-"]
      numbers = Number.where(number: string)
    end
  end
end
