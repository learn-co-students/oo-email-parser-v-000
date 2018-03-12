# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails

  @@all = []

  def initialize(csv)
    @emails = csv
  end

  def all
    @@all
  end

  def parse
    data = @emails.split(/,\s*|\s\b/).uniq
    data.each{|email| @@all << email}
  end




end
