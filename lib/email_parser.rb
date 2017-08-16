# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :emails

  # @@email_array = []

  def initialize(emails)

    @emails = emails

  end

  # def self.all
  #   @@email_array
  # end

  # def save
  #   self.class.all << self
  # end

  def parse

    self.emails.split(/[, ]+/).uniq

  end


end
