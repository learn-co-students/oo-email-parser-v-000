require 'pry'

class EmailParser
  attr_accessor :parsed_emails, :raw_emails

  def initialize(raw_emails)
    @raw_emails = raw_emails
    @parsed_emails = []

  end

  def parse
    @parsed_emails = @raw_emails.split(/\s|\,/).select{|x| x != ""}.uniq
  end

  # def parser 
  #   self.new.parse
  # end

end




# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
