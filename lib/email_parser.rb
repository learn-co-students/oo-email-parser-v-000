# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

attr_accessor :email_string

def initialize(email_string)
  @email_string = email_string
end

def parse
  final_email_list = []
  emails = self.email_string.scan(/[\w@.]+/)
  emails.each do |email|
    final_email_list << email unless final_email_list.include?(email)
  end
  final_email_list.uniq
end

end
