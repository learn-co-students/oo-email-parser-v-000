# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :email

  @@all= [] #class variable


  def self.all # class reader
  @@all
  end

  def initialize(emails)# accepts a string
  @emails = emails
  @@all << self
  end

  def parse
    csv = @emails.split(/\,\s|\s/) #separated with spaces *or* (| regex for or) separated with commas
    csv.uniq
  end
end
