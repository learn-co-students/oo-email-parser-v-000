# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
class EmailParser
  def initialize(emails)
    @@emails = emails.split(/,\s|\s/)
  end

  def parse
    @@emails.uniq
  end

end
