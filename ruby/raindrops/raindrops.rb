# Raindrop sounds based on number factors
class Raindrops
  def self.convert(number)
    sound = ''

    sound += 'Pling' if (number % 3).zero?
    sound += 'Plang' if (number % 5).zero?
    sound += 'Plong' if (number % 7).zero?

    if sound.empty?
      number.to_s
    else
      sound
    end
  end
end

module BookKeeping
  VERSION = 3
end
# sound = sound + 'Pling'
# sound = '' + 'Pling'
# sound = 'Pling'
# sound
