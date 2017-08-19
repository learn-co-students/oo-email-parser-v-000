# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :emails

  def initialize(list)
    @emails = list
  end

  def parse
    email_list = @emails.split(/,\s+|\s+/)
    new_list = []
    email_list.each do |email|
      if !new_list.include?(email)
        new_list << email
      end
    end
    new_list
  end

end
