# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    unique_emails = []
    emails.split(/[,\s]\s?/).each do |email|
      unique_emails << email unless unique_emails.include?(email)
    end
    unique_emails
  end

end