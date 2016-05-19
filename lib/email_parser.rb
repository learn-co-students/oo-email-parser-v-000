require 'pry'
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser
   attr_accessor :csv_data

  def initialize(data)
    @csv_data = data
  end
  

  def parse
    emails =[]  
    rows = csv_data.split(/\,|\s/)
    rows.delete("")
    rows.uniq!
    rows.each do |row|
      datarow = row.split(", ")
      emails << datarow[0].lstrip
    end
    emails
  end
end #of class EmailParser
