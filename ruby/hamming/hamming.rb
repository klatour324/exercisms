class Hamming
  def self.compute(original_strand, mutation_strand)
    raise ArgumentError if original_strand.length != mutation_strand.length

    difference_counter = 0
    mutation_array = mutation_strand.chars

    original_strand.each_char.with_index(0) do |character, index|
      difference_counter += 1 if mutation_array[index] != character
    end

    difference_counter
  end
end

module BookKeeping
  VERSION = 3
end
