# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :emails

  def initialize(email_string)
    @emails = email_string
  end

  def parse
    #should return an array of parsed emails, whether csv and space-delimited
    #emails is a string that is either csv or space-delimited
    result = @emails.split(/[\s,]+/)
    result = result.uniq
    result
  end

end
