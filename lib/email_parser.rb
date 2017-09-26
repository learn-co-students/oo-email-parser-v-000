# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  def initialize(email_string)
    @email_string = email_string
  end

  def parse
    emails_arr = @email_string.split(" ")
    emails_arr_final = emails_arr.collect { |e| e.chomp(",") }
    emails_arr_final.uniq
  end


end
