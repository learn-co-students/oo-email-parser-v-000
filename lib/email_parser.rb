# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  attr_accessor :email_list

def initialize(email_list)
  @email_list = email_list
end

def parse
  array = []
  emails = email_list.split(/[,\s]+/)
  emails.each do |email|
    array << email
    end
    array.uniq
end

end
# Gets INITIALIZED with a STRING of emails
# PARSE emails into an ARRAY using an INSTANCE method
# list of emails can be separated with SPACE or commas
# parse method should only return UNIQUE EMAILS
