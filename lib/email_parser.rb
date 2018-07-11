require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

#sep emails out of a string and put into an array!!!
class EmailParser
  attr_accessor :emails
  @@emails = []


  def parse

    self.split(" , ")
    #if  @@emails.detect { |email| emails.email == emails}
    #else
    #  email = self.new
    #  email.name = emails
    #  email.save
    #  email
  #end
end
end
  #if duplicate, reject
  #return with spaces or commas
