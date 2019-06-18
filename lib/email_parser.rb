# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
#`EmailParser` class that gets initialized with a string of emails.
class EmailParser

  #addresses is the instance variable of all unformatted string of emails passed in
  attr_accessor :addresses

  #assign the unformatted string of emails to the instance variable here on initialization
  #no need for class constructor because you are working on the instance
  #what is the instance that is being created? It is an instance of the parser which will act on the cluster of data (unformatted emails)
  def initialize(emails)
    @addresses = emails
  end

#instance method parse (data is already passed into the instance @addresses)
#parses spaces and csv delimited emails and returns them as an array
#returns only unique emails - meaning you remove dupes from that cluster of data when you return it.
#you are only being asked to look at the instance and the data that is passed in
  def parse
    split_array = @addresses.split(/\b[,\s]+/)
     split_array.uniq
  end

end
