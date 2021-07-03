# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser 

attr_accessor :emails, :string 

def initialize(string)
  @@string = string 
end 

def parse
new_array = []  
last_array = []
new_array = @@string.split(/[,\s]/)
new_array.each do |string1|
  string1.gsub(" ","")
  string1.strip!
end 
new_array.delete("")
last_array = new_array.uniq 
last_array
end   
  
  
end 