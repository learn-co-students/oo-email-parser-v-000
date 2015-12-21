# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
attr_accessor :emails

def initialize(emails)
  @emails = emails
end

def parse
  unique_emails_list = []
  emails_list = self.emails.split(/( |\, )/)
  emails_list.each_with_index do |item, index|
    if index.even? && !(unique_emails_list.include?(item))
      unique_emails_list << item 
    end 
  end 
  unique_emails_list
end 

end