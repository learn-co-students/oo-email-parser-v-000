class EmailParser

  attr_accessor :emails, :parser

  def initialize(emails)
    @emails = emails
  end

  def parse
    parser = emails.split /\s|, /
    parser.uniq
  end

end
