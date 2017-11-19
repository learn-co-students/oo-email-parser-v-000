# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  @@all = []

  def initialize(emails)
    @emails = emails
  end

  def parse
    parse_array = []
    @emails.split(/[,\s]/).collect {|emails| emails.strip if emails.strip != ""}.compact.uniq
  end
end
