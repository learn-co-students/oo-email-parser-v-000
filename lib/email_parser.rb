class EmailParser
attr_accessor :names

def initialize(names)
  @names = names
end

def parse
  list_of_emails = names.split(/[,\s]/)
  list_of_emails = list_of_emails.reject { |x| x.empty? }
  self.names = list_of_emails
  self.names = self.names.uniq
  self.names
end

end
