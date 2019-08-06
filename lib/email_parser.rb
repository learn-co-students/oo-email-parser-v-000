# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_reader :email_address

  def initialize(emails)
    @email_address = emails
  end

  def parse
    result = []
    splits = @email_address.split(' ')
    splits.each_with_index do |email, i|
      splits[i] = email.chomp(",")
    end
    splits.each do |email|
      if !(result.include?(email))
        result << email
      end
    end
    result
  end
end
