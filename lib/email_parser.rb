# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :emails
  #accept a string of unformatted emails
  def initialize(emails)
    @emails = emails
  end
  #parse method
  #seperate emails into unique email adresses
  def parse
    new_emails = emails.delete(",")#removes commas
    individual_emails = new_emails.split.uniq #splits emails and deletes repetes
  end
end
