require 'pry'

class EmailParser

def initialize(raw_emails)
  @@parsed_emails = []
  @emails = raw_emails
end

attr_accessor :emails

  def parse
   @@parsed_emails = emails.scan(/[\w\d_\.]+@[\w\d_]+\.+\w{2,4}/).uniq
   #@@parsed_emails = emails.split(/[(,\s)(\s)(,)]/)
  end
end


