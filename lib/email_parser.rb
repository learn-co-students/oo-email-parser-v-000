# A class EmailParser that accepts a string of unformatted
# emails. The delimiters supported are commas (',')
# or whitespace (' ').

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
