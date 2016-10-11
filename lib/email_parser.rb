# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_accessor :emails

  def initialize(csv_data)
    @csv_data = csv_data
  end

  def parse
    @email_data = @csv_data.split(/, | /)
    @emails = []
    @email_data.each do |email|
      if @emails.include?(email) == false
        @emails << email
      end
    end
    @emails
  end
end
