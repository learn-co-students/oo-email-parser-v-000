class EmailParser
  attr_accessor :list

  def initialize(emails)
    @emails = emails
  end

  def parse
    split = @emails.split(/[,][ ]|[ ]/)
    split.uniq
  end
end
