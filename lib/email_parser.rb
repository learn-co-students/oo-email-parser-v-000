# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :email

  def initialize (emails)
    @email = emails
  end

  def parse
    email_Array = @email.split(/[, ]/).uniq
    email_Array.reject! { |element| element.empty?   }
    email_Array
  end

  # def parse
  #   emails.split.map do |email|
  #     email.split(',')
  #   end.flatten.uniq
  # end


end
