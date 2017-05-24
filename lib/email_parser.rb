# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').



class EmailParser
  attr_accessor :emails

  def initialize(emails)
    #hoist parameter up
    @emails = emails
  end

  def parse
    # emails.split(/[,|\s]/)return only
    # emails.split(/[\s,]/).uniq
    new = @emails.split(/[\s,]/).uniq
    new.reject{|e| e.empty?}
  end
end #finished
