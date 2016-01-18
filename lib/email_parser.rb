# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
#class EmailParser

 # attr_accessor :emails

  #def initialize(emails)
    #@emails = emails
  #end

  #def parse
    #@emails.split(/[, ]/).delete_if{|element| element == ""}.uniq
  #end

#end

class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails.split(", ").join(" ").split(" ").uniq
  end

end
