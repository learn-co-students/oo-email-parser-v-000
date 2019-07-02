# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :parse, :email_list, :emails

  def initialize(emails)
    @emails = emails
  end

def parse
    #emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
    # email_list = emails.split(\s?[, ]\s?)
  #  emails.split(",") &&  emails.split(" ")
email_list = @emails.split(/[,\s]+/).uniq

  #  emails.each_line("\n") do |row|
  #    columns = row.split(",")

end
end
