class Pangram

  ALPHABET = ("a".."z")

  def self.is_pangram?(str)
    letters = str.downcase.chars.group_by {|c| c}
    if ALPHABET.all? { |letter| letters.keys.include?(letter) }
      true
    else
      false
    end
  end
end
