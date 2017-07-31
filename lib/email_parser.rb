 # Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

#use .uniq

class EmailParser
  #new class called EmailParser
  attr_accessor :emails

  def initialize(email_address)
  @emails= email_address
 end

 def parse
    @emails.gsub(',', "").split(" ").uniq
 end




end
