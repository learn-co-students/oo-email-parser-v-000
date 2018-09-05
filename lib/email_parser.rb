# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

attr_accessor :emails

def initialize(emails)
  @emails = emails
end


def parse
  #if the string contains a comma, then split the string by each comma and save it to a new array
  #then after that, join it back together by the space
  if @emails.include?(", ")
    email_array = @emails.split(", ")
    email_string_no_comma = email_array.join(" ")
    final_email_array = email_string_no_comma.split(" ")
    final_email_array.uniq
  else
    final_email_array_2 = @emails.split(" ")
    final_email_array_2.uniq
    end
  end


end
