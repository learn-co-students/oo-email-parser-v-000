# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    list1 = emails.split(",")
    list2 = []
    list1.each do |i|
      list2 << i.split(" ")
    end
    list3 = list2.flatten.uniq
  end


end
