# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
  attr_accessor :email
  
  def initialize(email_list)
    @@all = []
    emails = email_list.split(/,*\s/)

    list = emails.collect do |string|
      @email = string
      @@all << @email
    end
  end

  def parse
    @@all.uniq
  end

end