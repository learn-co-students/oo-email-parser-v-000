# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')


class EmailParser
  def initialize(emails)
    @email_list = emails.split(/[, ]/).select {|email| email.length > 0}
  end

  def parse
    @email_list.uniq
  end

end





