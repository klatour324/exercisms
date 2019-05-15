
class Acronym
  def self.abbreviate(term)
    term.scan(/\b\w/).join.upcase
  end
end
