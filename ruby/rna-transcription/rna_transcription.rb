VERSION = 3

class Complement

  # def initialize
  #   @complements_hash =
  #     { 'G' => 'C',
  #       'C' => 'G',
  #       'T' => 'A',
  #       'A' => 'U'}
  # end

  def self.of_dna(x)
    strand = x.chars
    if complements_hash.keys.include?(strand)
      strand.map {|letter| complements_hash.fetch(letter)}.join
    else
      ArgumentError
    end
  end

  def self.complements_hash
    { 'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'}
  end

end
