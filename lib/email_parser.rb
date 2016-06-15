require "pry"
class EmailParser

  attr_accessor :parse, :emails

  @@emails_array=[]

  def initialize(emails)
    @@emails = emails
    @@emails_array
  end

  def parse
    @@emails.delete!(',')
    @@emails.split.each do |email|
      @@emails_array.uniq << email
    end
  end
end
