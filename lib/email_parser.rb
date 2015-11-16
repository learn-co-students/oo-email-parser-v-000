# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser

  def initialize(emails)
    @emails = emails
  end

  def parse
    parse = @emails.split(/,\s|\s/)
    no_duplicates = []
    parse.each do |email|
      no_duplicates << email unless no_duplicates.include?(email)
    end
    no_duplicates
  end

end