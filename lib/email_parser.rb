# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :name, :csv_of_emails
  @@all = []

  def self.all
    @@all
  end

  def initialize(csv_emails)
    @csv_emails = csv_emails
    @@all << self
  end

def parse
  @csv_emails.split.collect do |address|
    address.split(',')
  end.flatten.uniq
end
end
