class EmailParser
  attr_accessor :emails

def initialize(emails)
  @emails = emails
end

def parse
    s =  emails.split(/[\s|,]/)
    s -= ['']
      s.uniq
end
end     .
