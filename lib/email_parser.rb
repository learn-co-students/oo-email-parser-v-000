class EmailParser

  def initialize(emails)
    @emails = emails
  end

  def parse
    array = @emails.split(/[,\s]+|[,\s]+/)
    array.uniq
  end

end