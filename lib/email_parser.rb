# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  attr_accessor :list

  def initialize(emails)
    @list = emails
  end

  def parse
    emails = list.scan(/([\w.?\w]*@[\w]*.[a-z]{2,3})/)
    emails.flatten!
    unique_emails = []
    while emails != []
      if unique_emails.include?(emails.first)
        emails.shift
      else
        unique_emails << emails.shift
      end
    end
    unique_emails
  end
end
