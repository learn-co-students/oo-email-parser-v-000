class EmailParser
  attr_accessor :emails

  def initialize(email)
    @emails = email
  end

  def parse
    emails.delete(',').split.uniq
  end
end 
#  attr_accessor :email

#  def self.parse(email_list)
#    email = email_list.split(",")
#  end
#end

# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
