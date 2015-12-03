# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser

  attr_accessor :list

  def initialize(list)
    @emails = list

  end

  def parse
    unique_emails = []
    formatted_emails = @emails.split(/[\,\s]+/)
    formatted_emails.each do |email|
      unique_emails << email unless unique_emails.include?(email)
    end
    unique_emails
  end

end
 