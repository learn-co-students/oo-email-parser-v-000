# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailParser
    attr_accessor :email
  def initialize(email)
    # binding.pry
    @email = email
  end

    def parse
       @email = email.split(" ")
    new_email = self.email.map do |x|
        x.gsub(",", "")
        end
        new_email.uniq
    end

end
