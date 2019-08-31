require 'pry'

class EmailParser
  attr_accessor :emails
  @@all = []

  def initialize (emails)
    @emails  = emails
  end

  def parse
    emails_list = @emails.split(" ")
    cleaned_emails_list = emails_list.collect {|email| email.chomp(",")}
    answer  = cleaned_emails_list.uniq
  end
end
