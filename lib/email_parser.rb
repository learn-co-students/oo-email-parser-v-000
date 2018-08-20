# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  @@neat_emails = []
  def initialize(string_of_emails)
    @string = string_of_emails
  end

  def parse
    emails = @string.split(/,.|\s/).uniq
    #emails.reject {|i| i == ""}.uniq
    #emails.uniq
  end


end
