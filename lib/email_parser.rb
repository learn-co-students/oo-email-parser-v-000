# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

# WORKING 3/4
# class EmailParser

#   attr_accessor :emails
#   @@emails = []

#   def initialize(data)
#       emails = data.split(/,?\s/).uniq
#       emails.each do |email|
#         if !@@emails.include?(email) && !email.empty?
#           @@emails << email
#         end
#       end
#   end
#   def parse
#     @@emails
#   end

# end

class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end
  def parse
    self.emails.split(/,?\s/).uniq
  end

end



