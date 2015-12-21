# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser

  def initialize(email_string)
    @original_string = email_string
  end

  # def new(email_string)
  #   @original_string = email_string
  # end

  def parse
    email_array = @original_string.gsub(/, | /i, ",").split(",").map(&:strip).reject(&:empty?)
    email_array = email_array.uniq
    email_array
  end


end