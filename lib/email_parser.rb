# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailParser
  attr_accessor :emails

  def initialize(list)
    @emails = list
  end

  def parse
    #@emails.split(/[\s,]/)
    #@emails.split(/\s|'|,/).reject! { |email| email.empty?}
    ret = []
    res = @emails.split(/\s|'|,/)
    res.each do |email|
      ret.push(email) if email != "" && !ret.include?(email)
    end
    ret
    #binding.pry
  end
end
