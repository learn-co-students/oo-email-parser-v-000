# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :name, :emails

#   def parse
#     parser = self.new
#     parser.split("," " ").uniq
#     parser.save
#     parser
#   end
# end
def initialize(emails)
  @emails = emails
end
def parse
    emails.split.collect do |address|
      address.split(',')
    end.flatten.uniq
  end
end
