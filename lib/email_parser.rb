# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def separate
    # take whats in emails, and split into array via space or comma character
    result = nil
    result = @emails.split(/\s|,/)
    result
  end

  def remove_duplicates
    result = nil
    result = self.separate.uniq
    result
  end

  def remove_empty_index
    result = []
    self.remove_duplicates.each do |email|
      if email != ""
        result << email
      end
    end
    result
  end

  def parse
    self.remove_empty_index
  end

end


test = EmailParser.new("avi@test.com arel@test.com")

test.separate
