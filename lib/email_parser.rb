# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :emails


  @@list = []

  def self.list
    @@list
  end


  def initialize(emails)
    @emails = emails
  end

  def parse
    if emails.include?(",")
      emails.delete!(",")
      list = emails.split(" ")
    else
      list = emails.split(" ")
    end
    list.uniq
  end

end
