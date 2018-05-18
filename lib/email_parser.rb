# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :address

  def initialize(address)
    @address = address
  end

  def parse
    split_address = @address.split(/[,\s]/)
    clean = []
    split_address.collect do |item|
      if item != ""
        clean << item.strip
      end
    end
    clean.uniq
  end

end
