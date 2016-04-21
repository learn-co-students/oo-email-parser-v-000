class EmailParser
attr_accessor :emails



def initialize(emails)
  @emails = emails
end

  def parse
    all = []
    v = @emails.split(/,? /) 
    v.each do |item| 
      if all.include?(item) == false
        all << item
      
      end
    end
    all
  end
end

#emails = "john@doe.com, person@somewhere.org"
#parser = EmailParser.new(emails)
 
#parser.parse# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
