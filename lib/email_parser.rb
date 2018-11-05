class EmailParser

  def initialize(str)
    @emails = str
  end

  def parse
    @emails.split(/[,\s]/).uniq.select {|email| email if email != ""}
  end

end
