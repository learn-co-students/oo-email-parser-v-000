# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser

  attr_accessor :email_list


  def initialize(emails)
    list = []
    normalize = emails.split(/[,\s]/)
    normalize.delete_if{|s| s.length < 2}
    normalize.each do |email|
      if list.include?(email) == false
        list << email
        @email_list = list
      end
    end
  end

  def parse
    @email_list
  end

end
