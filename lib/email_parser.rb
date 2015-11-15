# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
require 'pry'

class EmailParser
  attr_accessor :initial_list, :finished_list
  
  def initialize(emails)
    self.initial_list= emails
    self.finished_list = []
  end

  def parse
    self.do_the_parsing
    self.finished_list
  end

  def do_the_parsing
    split_list = self.initial_list.delete(",")
    split_list = split_list.split(' ')
    self.finished_list = split_list.uniq
  end


end
