# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.scan(/\w+@\w+.com/).uniq
  end
end
#### ALTERNATIVE ####
# 1. #split without argument splits string on whitespace
  # 2. #map then iterates through array and collects elements based on block:
  # 3. each element from emails.split array is split into arrays on ',' thus removing any ',' from elements: resulting in nested array of emails without ',' or whitespaces
  # 4. #flatten and #uniq chained on results of #above (on end line) that first flattens nested array into single array and then removes any non-uniq elements
# def parse(emails)
#     emails.split.map do |email|
#       email.split(',')
#     end.flatten.uniq
# end
