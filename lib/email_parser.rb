# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser

  attr_accessor :emails_raw

  def initialize(emails_raw)
    @emails_raw = emails_raw
  end

  def parse
    # this regex captures:
      # either:
      #   a comma followed by a whitespace
      #    (where before them both is a word character)
      #   a whitespace
      #    (where before it is a word character)
    emails_list = @emails_raw.split(/\,\s(?<=\w\,\s)|\s(?<=\w\s)/)
    emails_list.uniq
  end


end
