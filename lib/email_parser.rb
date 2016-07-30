# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :email_address_list

  def initialize(email_address_list)
    @email_address_list = email_address_list
  end

  def parse
    split_email_addresses = @email_address_list.split(/[,\s]/)
    split_email_addresses = split_email_addresses.uniq.delete_if {|email_address| email_address == ""}
    split_email_addresses
  end
end

emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
