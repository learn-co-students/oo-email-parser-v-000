# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
  attr_accessor :emails
  attr_reader :lst

  @@lst = []

  def initialize(emails)
   @emails = emails
  end

  def parse
    @@lst = []
    chunk = emails.split(/[,\s]/)
    chunk.each do |e|
      if @@lst.include?(e) || e == ""
        next
      else
        @@lst << e
      end
    end
    return @@lst
  end

end