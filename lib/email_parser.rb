# Build a class EmailParser that accepts a string of unformatted
# class EmailParser
# attr_accessor :emails
# @@all = []
# def self.all?
#   @@all
# end
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser


  attr_accessor :emails
  def initialize(emails)
@emails = emails
  end

def parse
self.emails.split(", ").map { |e| e.split(" ")}.flatten.uniq
end
end
