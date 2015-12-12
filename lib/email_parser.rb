class EmailParser
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def parse
    parsed = self.string.split(" ")
    parsed.collect do |parse|
      parse.gsub!(",","")
      parse = parse.chomp
    end.uniq
  end

end