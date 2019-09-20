class EmailParser
  def initialize(arg)
    @data=arg
  end
  def parse
    @data.split(/\b[,]\s|\b\s/).uniq
  end
end
