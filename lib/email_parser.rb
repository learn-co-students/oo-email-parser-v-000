# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
class EmailParser
    attr_accessor :email_str
    @@emails_arr = []

    def initialize(email_str)
      @email_str = email_str
    end

    def parse
      @@new_array = email_str.split(/, |\,|\ /).reject &:empty?
      @@new_array.uniq
    end
end 
