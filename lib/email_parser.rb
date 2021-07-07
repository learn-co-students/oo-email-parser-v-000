# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :address
  
  def initialize(address)
    @address = address
    @addresses = Array.new
    @addresses << @address
  end
  
  def parse
    @addresses.map { |addr|
      addr.split(/[, ]/)
    }.flatten.reject { |e| 
      e.empty? 
    }.uniq
  end
end
