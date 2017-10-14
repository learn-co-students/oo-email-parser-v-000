class EmailParser
attr_accessor :emails

def initialize(email_string)
  @email_string = email_string
end

def parse
  @email_string.split(/\, | /).uniq
end

end
