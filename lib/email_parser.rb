# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :email_address

  EMAILS = []

  def initialize(email_address)
    @email_address = email_address
  end

  # def parse
  #   email_address.split.map do |email|
  #     email.split(',')
  #   end.flatten.uniq
  # end

  def parse
     parse_email = email_address.split(/[,\s]+/).uniq
  end

end
