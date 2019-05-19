require 'pry'

class EmailParser

  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.split.map do |email_chopper|
      email_chopper.split(',')
    end.flatten.uniq
  end
end
