require 'pry'

class EmailParser

  attr_accessor :email

  @@email = []

  def initialize(emails)
    @email = emails
    @@email << emails
  end

  def parse
    email_variable = @email.split(/\s|\,/)
    email_variable.delete_if {|str| str.empty?}
    email_variable.uniq

    # delete_if {|str| str.empty?}

  end

end

# avi@test.com arel@test.com,avi@test.com, arel@test.com

# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
