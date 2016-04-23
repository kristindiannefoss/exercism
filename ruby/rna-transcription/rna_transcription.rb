VERSION = 3
KEYS = ['G', 'C', 'T', 'A']

class Complement

  def self.of_dna(x)
    strand = x.chars
    valid = strand.select {|char| complements_hash.has_key?(char)}

    if strand.any? {|char| KEYS.include?(char) == false }
      raise ArgumentError.new("Invalid Characters")

    elsif valid == []
      raise ArgumentError.new("Invalid Characters")

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
