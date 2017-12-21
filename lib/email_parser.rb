# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_array = emails.split(" ")
    contains_duplicates = email_array.map do |e|
      if e.include? ","
        e.tr(',', '')
      else
        e
      end
    end
    contains_duplicates.uniq
  end


end
