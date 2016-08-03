class EmailParser

  attr_accessor :emails

  def initialize(addresses)

    @emails = addresses

  end

  def parse
    string = @emails.delete(",")
    array = string.split(" ")
    output_array = array.uniq
  end
end
