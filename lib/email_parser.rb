# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
	def initialize(array)
		@list = array
	end
	
	def parse
		@list.gsub(/s/,"").split(" ").uniq
	end
end