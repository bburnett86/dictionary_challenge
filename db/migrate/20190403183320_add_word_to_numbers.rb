class AddWordToNumbers < ActiveRecord::Migration[5.2]
  def change
    add_reference :numbers, :word, foreign_key: true
  end
end
