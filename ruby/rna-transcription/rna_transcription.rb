require 'pry'
VERSION = 3

class Complement

  def self.of_dna(x)
    strand = x.chars
    # binding.pry
    valid = strand.select {|char| complements_hash.has_key?(char)}

    if valid == []
      raise ArgumentError.new("Invalid Character")

    else
    valid.map {|letter| complements_hash.fetch(letter)}.join
    end
  end

  def self.complements_hash
    { 'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'}
  end

end
