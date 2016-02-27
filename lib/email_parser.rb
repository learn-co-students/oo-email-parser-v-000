# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser

  attr_accessor :unformatted

  def initialize(unformatted)
    @unformatted = unformatted
  end

  def parse
#     emails_collect = []
#     emails_collect << unformatted.split(/[,]/).map(&:strip)  or: (/[\s,]+/)
    #or:    email.split(",")
    #end.flatten.uniq
    unformatted.split(/\s|,\s/).uniq  # | he pipe is the "or"
   # unformatted.split(/\s|,\s/).map(&:strip).uniq
   #  unformatted.split(/?=.*\bcom\b/).uniq
 #   return emails_collect
 end
end